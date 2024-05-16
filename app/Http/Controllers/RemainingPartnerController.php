<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Customer;
use App\Models\Remainingpartner;
use Illuminate\Support\Facades\Validator;

class RemainingPartnerController extends Controller
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
        $url = url('/rpartners/add');
        $title = 'DETAILS OF REMAINING PARTNERS / DIRECTORS';
        $btext = "Submit";
        $data = compact('url', 'title', 'btext');
        return view('remaining_partners')->with($data);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    { 
        
        $lastcustomerId = Customer::latest()->first()->cust_id;
        $loanId = Customer::where('cust_id', $lastcustomerId)->value('loan_id');

        $requestData = $request->all();

        // Flag to track if any partners were saved
        $partnersSaved = false;

        // Loop through the input arrays and insert non-blank values
        for ($i = 0; $i < count($requestData['full_name_first']); $i++) {
            if (!empty($requestData['full_name_first'][$i])) {
                $rpartner = new Remainingpartner;
                $rpartner->loan_id                         = $loanId;
                $rpartner->cust_id                         = $lastcustomerId;
                $rpartner->partners_name                   = $requestData['full_name_first'][$i];
                $rpartner->Date_of_Birth                   = date('Y-m-d', strtotime(str_replace('-', '/', $requestData['dob_day'][$i])));
                $rpartner->partners_pannumber              = $requestData['pan_no_1'][$i];
                $rpartner->partners_Residence_Address      = $requestData['ADDRESS'][$i];
                $rpartner->partners_Mobile_no              = $requestData['MOBILE'][$i];
                $rpartner->partners_workexp                = $requestData['WorkExperience'][$i];
                $rpartner->shareholding_with_cust_entity   = $requestData['Shareholding'][$i];
                $rpartner->save();

                // Set the flag to true if any partner is saved
                $partnersSaved = true;
            }
        }

        // Check if any partners were saved
        if ($partnersSaved) {
            // Redirect back with a success message
            return redirect()->back()->with('success', 'Partners created successfully.');
        } else {
            // Redirect back with an error message if no partners were saved
            return redirect()->back()->with('error', 'No partners data provided.');
        }
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
