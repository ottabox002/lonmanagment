<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Customer;
use App\Models\References;

class RefrrencesController extends Controller
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
        $url = url('/reference/add');
        $title = 'REFERENCES';
        $btext = "Submit";
        $data = compact('url', 'title', 'btext');
        return view('refernce')->with($data);
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {

        $request->validate([
            'name.*'                 =>'required',
            'address.*'              => 'required',
            'city.*'                 => 'required',
            'pincode.*'              => 'required|numeric|digits:6',
            'state.*'                => 'required',
            'country.*'              => 'required',
            'phone.*'                => 'required|numeric|digits:10',
            'mobile.*'               => 'required|numeric|digits:10',
            'email.*'                => 'required|email',
            'applicntrelation.*'     => 'required'
        ]);

        $lastcustomerId = Customer::latest()->first()->cust_id;
        $loanId = Customer::where('cust_id', $lastcustomerId)->value('loan_id');
        // dd(  $request->all());
        // Loop through the array fields and save each record
        foreach ($request->name as $key => $value) { 
            
            $ref = new References;
            $ref->loan_id                 = $loanId;
            $ref->cust_id                 = $lastcustomerId;
            $ref->Name                    = $request->name[$key];
            $ref->Address                 = $request->address[$key];
            $ref->City                    = $request->city[$key];
            $ref->pincode                 = $request->pincode[$key];
            $ref->State                   = $request->state[$key];
            $ref->Country                 = $request->country[$key];
            $ref->Phone                   = $request->phone[$key];
            $ref->Mobile                  = $request->mobile[$key];
            $ref->Email                   = $request->email[$key];
            $ref->Relation_with_applicant = $request->applicntrelation[$key];
            $ref->save();
        }

        return redirect()->back()->with('success', 'References created successfully.');

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
