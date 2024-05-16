<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\PermissionController;
use App\Http\Controllers\RollController;
use App\Http\Controllers\FormController;
use App\Http\Controllers\CustomerController;
use App\Http\Controllers\ProprietorController;
use App\Http\Controllers\CoCustomerController;
use App\Http\Controllers\RemainingPartnerController;
use App\Http\Controllers\BankDetailsController;
use App\Http\Controllers\RefrrencesController;
use Illuminate\Support\Facades\Auth;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('login');
});  
 
// Route::get('/session-expired', function () {
//     return redirect()->route('login')->with('error', 'Your session has expired. Please log in again.'); 
// })->name('sessionExpired');

//for admin login and logout'
Route::post('/adminlogin',[LoginController::class,'login']);
Route::get('/logout',[LoginController::class,'logout']);

// home
Route::get('/home',function()
{
    return view('home');
});
Route::get('/alluser',[UserController::class,'index'])->name('alluser');
Route::get('/adduser',[UserController::class,'create']);
Route::post('/adduser',[UserController::class,'store']);
Route::get('/user/edit/{id}',[UserController::class,'edit']);
Route::post('/user/update/{id}',[UserController::class,'update']);
Route::get('/user/delete/{id}',[UserController::class,'destroy']);

// Route::get('/user/delete/{id}',[UserController::class,'destroy'])->name('user.destroy');


    Route::get('/permission',[PermissionController::class,'index'])->name('allpermission');
    Route::get('/permission/add',[PermissionController::class,'create']);
    Route::post('/permission/add',[PermissionController::class,'store']);
    Route::get('/permission/edit/{id}',[PermissionController::class,'edit']);
    Route::post('/permission/update/{id}',[PermissionController::class,'update']);
    Route::get('/permission/delete/{id}',[PermissionController::class,'destroy']);

    //for role

    Route::get('/role',[RollController::class,'index'])->name('allroles');
    Route::get('/role/add',[RollController::class,'create']);
    Route::post('/role/add',[RollController::class,'store']);
    Route::get('/role/edit/{id}',[RollController::class,'edit']);
    Route::post('/role/update/{id}',[RollController::class,'update']);
    Route::get('/role/delete/{id}',[RollController::class,'destroy']);

    //main form
    Route::get('/office/add',[FormController::class,'create'])->name('officeuse');
    Route::post('/office/add',[FormController::class,'store']);

    //customer form
    Route::get('/customer/add',[CustomerController::class,'create'])->name('customeruse');
    Route::post('/customer/add',[CustomerController::class,'store']);

    //proprietor form
    Route::get('/proprietor/add',[ProprietorController::class,'create'])->name('proprietoruse');
    Route::post('/proprietor/add',[ProprietorController::class,'store']);

    //co_Customer form
    Route::get('/cocustomer/add',[CoCustomerController::class,'create'])->name('cocustomeruse');
    Route::post('/cocustomer/add',[CoCustomerController::class,'store']);

    //remining partner
    Route::get('/rpartners/add',[RemainingPartnerController::class,'create'])->name('rpartnersuse');
    Route::post('/rpartners/add',[RemainingPartnerController::class,'store']);

    //bank detsils
    Route::get('/bankdetails/add',[BankDetailsController::class,'create'])->name('babkdetilssuse');
    Route::post('/bankdetails/add',[BankDetailsController::class,'store']);

    //reference details
    Route::get('/reference/add',[RefrrencesController::class,'create'])->name('referencesuse');
    Route::post('/reference/add',[RefrrencesController::class,'store']);

    //gete data from api
    Route::post('getpincodedetails', [FormController::class, 'getpincodedetails'])->name('getpincodedetails');
    Route::post('getstatecodedetails', [FormController::class, 'getStateCodeDetails'])->name('getstatecodedetails');

    //view application
    Route::get('viewappliation',[FormController::class,'viewapplication'])->name('viewapplication');
    Route::get('viewapplication/{id}',[FormController::class,'show']);
  
    //pdf  application  
    Route::get('viewpdf/{loan_id}',[FormController::class,'viewPdf'])->name('viewpdf'); 

    Route::get('download-pdf/{loan_id}', [FormController::class, 'downloadPDF'])->name('download.pdf');
