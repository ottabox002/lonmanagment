<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Customer;
use App\Models\FormOffice;

class CustomerController extends Controller
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
        $url = url('/customer/add');
        $title = 'BORROWER DETAILS';
        $btext = "Submit";
        $index = 0;
        $data = compact('url', 'title', 'btext' , 'index');
        return view('customer')->with($data);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {

        // echo "<pre>";
        // print_r($request->all());
        // echo "</pre>";
        // exit();

        $request->validate([
            'name_of_borrower.*'      => 'required',
            'entity_type.*'           => 'required',
            'date_of_incorporation.*' => 'required',
            'principal_address.*'     =>'required',
            'city.*'                  => 'required',
            'District.*'              => 'required',
            'State.*'                 => 'required',
            'pincode.*'               => 'required|numeric|digits:6',
            'state_code.*'            => 'required',
            'country_code.*'          => 'required',
            'permanent_address.*'     => 'required',
            'per_city.*'              => 'required',
            'per_District.*'          => 'required',
            'per_State.*'             => 'required',
            'per_pincode.*'           => 'required|numeric|digits:6',
            'per_state_code.*'        => 'required',
            'per_country_code.*'      => 'required',
            'corporation_place.*'     => 'required',
            'telephone.*'             => 'required|numeric|digits:10',
            'email.*'                 => 'required|email',
            'industry_type.*'         => 'required',
            'Segment.*'               => 'required',
            'gst.*'                   => 'required',
            'pan.*'                   => 'required',
            // 'form60.*'                => 'required|in:YES,NO',
            'bussiness_vintage.*'     => 'required',
        ]);

        // $lastLoanId = FormOffice::latest()->first()->loan_id;
        $LoanId = session('application_id'); 
     
      

            foreach ($request->name_of_borrower as $key => $value) { 
        //    dd($request->name_of_borrower);
            $cust_data = new Customer;
            $cust_data->loan_id = $LoanId;  
            if(isset($request['entity_type'][$key]) && isset($request['name_of_borrower'][$key])) {
            $data1= $request['entity_type'][$key]; 
            $sub_string = substr($data1, 0, 11);   
            }
            // dd( $sub_string );
            $cust_data->cust_name = $request['name_of_borrower'][$key];
            $cust_data->cust_entity_type =  $sub_string; 
            $cust_data->Date_of_Incorporation = $request['date_of_incorporation'][$key];
            $cust_data->Principal_office_address = $request['principal_address'][$key];
            $cust_data->Principal_City = $request['city'][$key];
            $cust_data->Principal_District = $request['District'][$key];
            $cust_data->Principal_State = $request['State'][$key];
            $cust_data->Principal_pincode = $request['pincode'][$key];
            $cust_data->Principal_State_code = $request['state_code'][$key];
            $cust_data->Principal_Country_Code = $request['country_code'][$key];
            $cust_data->Permanent_office_address = $request['permanent_address'][$key];
            $cust_data->Permanent_City = $request['per_city'][$key];
            $cust_data->Permanent_District = $request['per_District'][$key];
            $cust_data->Permanent_State = $request['per_State'][$key];
            $cust_data->Permanent_pincode = $request['per_pincode'][$key];
            $cust_data->Permanent_State_code = $request['per_state_code'][$key];
            $cust_data->Permanent_Country_Code = $request['per_country_code'][$key];
            $cust_data->Place_of_incorporation = $request['corporation_place'][$key];
            $cust_data->cust_Telephone = $request['telephone'][$key];
            $cust_data->cust_email = $request['email'][$key];
            $cust_data->Type_of_Industry = $request['industry_type'][$key];
            $cust_data->Segment = $request['Segment'][$key];
            $cust_data->cust_gst = $request['gst'][$key];
            $cust_data->cust_pannumber = $request['pan'][$key];
            $cust_data->Form_60 = $request['form60'][$key];
            $cust_data->Overall_Business_Vintage = $request['bussiness_vintage'][$key];

            $cust_data->save();
        }
        return redirect('/proprietor/add')->with('success', 'Customer created successfully.');

    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
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
}
