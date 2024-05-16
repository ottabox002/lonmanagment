<?php

namespace App\Http\Controllers;

use App\Models\BankDetails;
use App\Models\CoCustomer;
use Illuminate\Http\Request;
use App\Models\FormOffice;
use App\Models\CountryCode;
use App\Models\Customer;
use App\Models\Proprietor;
use App\Models\References;
use App\Models\Remainingpartner;
// use Barryvdh\DomPDF\Facade\Pdf as FacadePdf;  
use Barryvdh\DomPDF\Facade\Pdf;

use Carbon\Carbon; 

use Illuminate\Support\Facades\Http;
// use App\Http\Controllers\Session;

class FormController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        // session()->destroy('application_id');
        Session()->forget('application_id');
        $todayDate = Carbon::now()->format('dmY');

        // Retrieve the latest record from FormOffice for today's date
        $latestRecord = FormOffice::whereDate('created_at', Carbon::today())->latest()->first();

        // Initialize the counter
        $counter = 1;

        // If there's a latest record, extract the counter from the "Prospect No"
        if ($latestRecord) {
            // Extract the counter from the "Prospect No"
            $prospectNoParts = explode('FD', $latestRecord->Prospect_No);
            if (isset($prospectNoParts[1])) {
                // Extract the counter from the "Prospect No"
                $counter = (int) substr($prospectNoParts[1], 0, 2) + 1;
            }
        }

        // Generate the prospect number
        $prospectNo = "FD" . str_pad($counter, 2, "0", STR_PAD_LEFT) . $todayDate;

        $latestCustomerId = FormOffice::max('customer_id');
        $customerId = $latestCustomerId + 1;


        $url = url('/office/add');
        $title = 'For Office Use Only';
        $btext = "Submit";
        $data = compact('url', 'title', 'btext', 'prospectNo', 'customerId');
        return view('officeuse')->with($data);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $request->validate([
            'ckyc_no'             => 'required',
            'date_of_application' => 'required',
            'customer_id'         => 'required',
            'prospect_no'         => 'required',
            'tenure_months'       => ['required', 'numeric'],
            'loan_amount'         => ['required', 'regex:/^\d+(\.\d{1,2})?$/'],
            'purpose'             => 'required',
            'application_type'    => 'required',
            'account_type'        => 'required'
        ]);

        // $applicationType = implode(',', $request->input('application_type'));
        // $accountType = implode(',', $request->input('account_type'));

        $officedata = new FormOffice;
        $officedata->ckyc_no = $request['ckyc_no'];
        $officedata->date = $request['date_of_application'];
        $officedata->customer_id = $request['customer_id'];
        $officedata->Prospect_No = $request['prospect_no'];
        $officedata->Months = $request['tenure_months'];
        $officedata->Loan_Amount = $request['loan_amount'];
        $officedata->Purpose = $request['purpose'];
        $officedata->Application_Type = $request['application_type'];
        $officedata->Account_Type = $request['account_type'];
        $officedata->save();

        return redirect('viewappliation')->with('success', 'Appication created successfully.');
    }

    /**
     * Display the specified resource.
     */
    public function viewapplication()
    {
        $allapplications = FormOffice::orderBy('created_at', 'desc')->get();
        $data = compact('allapplications');
        return view('viewapplication')->with($data);
    }

    public function show(string $id)
    {
        // store id into session
        session()->put('application_id', $id);
        $officedata = FormOffice::find($id);
        $url = url('/office/add');
        $title = 'For Office Use Only';
        $btext = "Submit";
        $data = compact('url', 'title', 'btext', 'officedata');
        return view('officeuse')->with($data);
    }


    public function viewPdf(string $id)
    {
        session()->put('application_id', $id);
        $officedata = FormOffice::find($id);
        $customer = Customer::where('loan_id', $id)->first();
        $Proprietors = Proprietor::where('loan_id', $id)->get();
        $CoCustomers = CoCustomer::where('loan_id', $id)->get();
        $Remainingpartners = Remainingpartner::where('loan_id', $id)->get();
        // dd($Remainingpartners);
        $BankDetailes = BankDetails::where('loan_id', $id)->get();
        $References = References::where('loan_id', $id)->get();
        $url = url('/office/add');
        $title = 'For Office Use Only';
        $btext = "Submit";
        $data = compact('url', 'title', 'btext', 'officedata', 'customer', 'Proprietors', 'CoCustomers', 'Remainingpartners', 'BankDetailes', 'References');
        //  dd($data);
        return view('pdfview')->with($data);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }

    public function getpincodedetails(Request $request)
    {
        $pincode = $request['pincode'];

        $response = Http::get("https://api.postalpincode.in/pincode/$pincode");

        if ($response->successful()) {
            // Get the response body as an array
            $data = $response->json();

            return response()->json($data);
        } else {
            return response()->json(['error' => 'Failed to fetch pincode details.'], $response->status());
        }
    }

    public function getStateCodeDetails(Request $request)
    {
        $stateName = $request->input('state');

        $stateDetails = CountryCode::where('state_name', $stateName)->first();
        return response()->json($stateDetails);
    }

    public function downloadPDF($id)
    {
        $data = [
            'title' => 'new Pdf',
            'date' => date('m/d/Y')
        ];
        $officedata = FormOffice::findOrFail($id); 
        $customer = Customer::where('loan_id', $id)->first();
        $Proprietors = Proprietor::where('loan_id', $id)->get();
        $CoCustomers = CoCustomer::where('loan_id', $id)->get();
        $Remainingpartners = Remainingpartner::where('loan_id', $id)->get();
        // dd($Remainingpartners);
        $BankDetailes = BankDetails::where('loan_id', $id)->get();
        $References = References::where('loan_id', $id)->get(); 
        $data = compact('officedata', 'customer', 'Proprietors', 'CoCustomers', 'Remainingpartners', 'BankDetailes','References');
        $html = view('pdfview', $data)->render();  
    
        $pdf = Pdf::loadHtml($html)->setOptions(['defaultFont' => 'sans-serif']);
        // $pdf = Pdf::loadView('pdfview',$data)->setOptions(['defaultFont' => 'sans-serif']);
        // dd($data);
        // $pdf = PDF::loadView('pdfview')->setOptions(['defaultFont' => 'sans-serif']);
// dd($pdf);
    
//   dd($pdf);
        return $pdf->download();
        
     
    }
}
