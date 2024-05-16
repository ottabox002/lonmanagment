<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Customer;
use App\Models\Proprietor;
use Illuminate\Support\Facades\Validator;

class ProprietorController extends Controller
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
        $url = url('/proprietor/add');
        $title = 'DETAILS OF PROPRIETOR / MANAGING PARTNER/ MANAGING DIRECTOR';
        $btext = "Submit";
        $data = compact('url', 'title', 'btext');
        return view('proprietor')->with($data);
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
     
  
        $validator = Validator::make($request->all(), [
            'title.*'             => 'required',
            'fullname.*'          => 'required',
            'relation_type.*'     => 'required',
            'apply_as_customer.*'  => 'required',
            'f_s_name.*'          => 'required',
            'Shareholding.*'      => 'required|numeric',
            'dob.*'                => 'required',
            'Gender.*'            => 'required|in:Male,Female,Other',
            'Marital_Status.*'     => 'required|in:Married,UnMarried',
            'Citizenship.*'        => 'required',
            'Residential_type.*'   => 'required',
            'Occupation_type.*'    => 'required',
            // 'different_address.*' => 'required',
            'current_address.*'   => 'required',
            'current_landmark.*'   => 'required',
            'city.*'              => 'required',
            'District.*'           => 'required',
            'State.*'             => 'required',
            'pincode.*'            => 'required|numeric|digits:6',
            'state_code.*'         => 'required',
            'country_code.*'       => 'required',
            'Residence_type.*'     => 'required',
            'residance_year.*'     => 'required',
            // 'proof_address.*'    => 'required',
            'per_address.*'        => 'required',
            'per_landmark.*'      => 'required',
            'per_city.*'           => 'required',
            'per_District.*'      => 'required',
            'per_State.*'         => 'required',
            'per_pincode.*'       => 'required|numeric|digits:6',
            'per_state_code.*'     => 'required',
            'per_country_code.*'  => 'required',
            'mobile.*'            => 'required|numeric|digits:10',
            'email.*'             => 'required|email',
            'pan.*'                => 'required',
            // 'form60.*'             => 'required|in:Yes,No',
            'adhar.*'             => 'required',
        ]);

        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput(); 
            // dd($validator);
        }

       $LoanId = session('application_id');   
    //  dd($LoanId); 
       $custmoreID = Customer::where('loan_id', $LoanId)->value('cust_id');
 
   
// dd($LoanId);
       foreach ($request->title as $key => $value) {  
        // dd($request->title);
       $Proprietor = new Proprietor;
       $Proprietor->loan_id = $LoanId; 
       $Proprietor->cust_id = $custmoreID; 

    //    $Proprietor->loan_id = $loanId;
    //    $Proprietor->cust_id = $lastcustomerId;
       $Proprietor->title	 = $request['title'][$key];
       $Proprietor->proprietor_name	 = $request['fullname'][$key];
       $Proprietor->relation_with_applicant = $request['relation_type'][$key];
       $Proprietor->applying_as_co_borrower = $request['apply_as_customer'][$key];
       $Proprietor->father_or_spouse_name = $request['f_s_name'][$key];
       $Proprietor->shareholding_with_cust_entity = $request['Shareholding'][$key];
       $Proprietor->Date_of_Birth = $request['dob'][$key];
       $Proprietor->Gender = $request['Gender'][$key];
       $Proprietor->Marital_Status = $request['Marital_Status'][$key];
       $Proprietor->Citizenship = $request['Citizenship'][$key];
       $Proprietor->Residential_Status = $request['Residential_type'][$key];   
       $Proprietor->Occupation_type =  $request['Occupation_type'][$key];
    //    $Proprietor->Different_from_Permanent_addess = $request['different_address'][$key];
       $Proprietor->Current_Residence_Address = $request['current_address'][$key];
       $Proprietor->Current_Landmark = $request['current_landmark'][$key];
       $Proprietor->Current_City = $request['city'][$key];
       $Proprietor->Current_District = $request['District'][$key];
       $Proprietor->Current_State = $request['State'][$key];
       $Proprietor->Current_pincode = $request['pincode'][$key];
       $Proprietor->Current_State_code = $request['state_code'][$key];
       $Proprietor->Current_Country_Code = $request['country_code'][$key];
       $Proprietor->Residence_Type = $request['Residence_type'][$key];
       $Proprietor->Current_Residences_years = $request['residance_year'][$key];
       $Proprietor->Address_as_per_proof = $request['proof_address'][$key];
       $Proprietor->Permanent_Residence_Address = $request['per_address'][$key];
       $Proprietor->Permanent_Landmark = $request['per_landmark'][$key];
       $Proprietor->Permanent_City = $request['per_city'][$key];
       $Proprietor->Permanent_District = $request['per_District'][$key];
       $Proprietor->Permanent_State = $request['per_State'][$key];
       $Proprietor->Permanent_pincode = $request['per_pincode'][$key];
       $Proprietor->Permanent_State_code = $request['per_state_code'][$key];
       $Proprietor->Permanent_Country_Code = $request['per_country_code'][$key];
       $Proprietor->proprietor_Mobile_no = $request['mobile'][$key];
       $Proprietor->proprietor_email = $request['email'][$key];
       $Proprietor->proprietor_pannumber = $request['pan'][$key];
       $Proprietor->proprietor_Form_60 = $request['form60'][$key];
       $Proprietor->proprietor_adharnumber = $request['adhar'][$key];
       $Proprietor->save();
       }
       return redirect()->back()->with('success', 'Proprietor created successfully.');
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
