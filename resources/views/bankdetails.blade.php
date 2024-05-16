@push('title')
    <title>Customer form</title>
@endpush
@extends('layout.main')

@section('main-section')
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            {{-- <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Dashboard</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="">Home</a></li>
              <li class="breadcrumb-item active">Add Permission</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid --> --}}
        </div>

        <div class="content">
            <div class="container-fluid">
                @if (session('success'))
                    <div class="alert alert-success">
                        {{ session('success') }}
                    </div>
                @endif

                @if ($errors->any())
                    <div class="alert alert-danger">
                        <ul>
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
                @endif

                <div class="row">

                    @include('sidebar')

                    <div class="col-lg-9">
                        <form action="{{ url($url) }}" method="POST">
                            @csrf <!-- Include CSRF token for Laravel form submission -->
                            <div id="partner-row-container">
                                <div class="row mb-3 bg-red d-flex justify-content-between">
                                    <div>
                                        <h6 style="font-weight: 700" class="mt-2 ml-2">{{ $title }}</h6>
                                    </div>

                                    <div>
                                        <a href="#" id="add-partner-row">
                                            <i class="fas fa-plus mt-2 mr-2" style="color:white"></i>
                                        </a>
                                    </div>
                                </div>

                                <div class="row mb-1 partner-row">
                                <div class="row mb-1">
                                    <div class="col-lg-3">
                                        <div class="form-group">
                                            <label for="name_of_bank" class="text-nowrap">Name of Bank</label>
                                            
                                                <input type="text" class="form-control" id="name_of_bank" name="name_of_bank"
                                                 value="{{ old('name_of_bank.0', '') }}">

                                            @error('name_of_bank')
                                                <span class="text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>
                                    </div>

                                    <div class="col-lg-6">
                                        <div class="form-group">
                                            <label for="branch_address" class="text-nowrap">Branch Address</label>
                                            <input type="text" class="form-control" id="branch_address"
                                                name="branch_address" 
                                                value="{{ old('branch_address.0', '') }}">
                                            @error('branch_address')
                                                <span class="text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>
                                    </div>

                                    <div class="col-lg-3">
                                        <div class="form-group">
                                            <label for="accountname" class="text-nowrap">Account Holder Name</label>
                                            <input type="text" class="form-control" id="accountname" name="accountname"
                                                value="{{ old('accountname.0', '') }}">
                                            @error('accountname')
                                                <span class="text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>
                                    </div>

                                </div>

                                {{-- Principal office address --}}
                                <div class="row mb-1">

                                    <div class="col-lg-3">
                                        <div class="form-group">
                                            <label for="accountnumber" class="text-nowrap">Account Number</label>
                                            <input type="text" class="form-control" id="accountnumber"
                                                name="accountnumber" 
                                                value="{{ old('accountnumber.0', '') }}">
                                            @error('accountnumber')
                                                <span class="text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>
                                    </div>

                                    <div class="col-lg-2">
                                        <div class="form-group">
                                            <label for="typeofacount" class="text-nowrap">Type of Account</label>
                                            <input type="text" class="form-control" id="typeofacount" name="typeofacount"
                                             
                                                value="{{ old('typeofacount.0', '') }}">
                                            @error('typeofacount')
                                                <span class="text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>
                                    </div>

                                    <div class="col-lg-3">
                                        <div class="form-group">
                                            <label for="accountyear" class="text-nowrap">Account Operational Since</label>
                                            <input type="text" class="form-control" id="accountyear" name="accountyear"
                                              
                                                value="{{ old('accountyear.0', '') }}">
                                            @error('accountyear')
                                                <span class="text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>
                                    </div>

                                    <div class="col-lg-2">
                                        <div class="form-group">
                                            <label for="ifsc_code" class="text-nowrap">IFSC Code</label>
                                            <input type="text" class="form-control" id="ifsc_code" name="ifsc_code"
                                             value="{{ old('ifsc_code.0', '') }}"> 
                                            @error('ifsc_code')
                                                <span class="text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>
                                    </div>

                                    <div class="col-lg-2">
                                        <div class="form-group">
                                            <label for="micr_code" class="text-nowrap">MICR Code</label>
                                            <input type="text" class="form-control" id="micr_code" name="micr_code"
                                                value="{{ old('micr_code.0', '') }}">
                                            @error('micr_code')
                                                <span class="text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>
                                    </div>
                                </div> 

                            </div> 
                        </div>


                                <div class="row">
                                    <div class="col-lg-12">
                                        <button type="submit" class="btn btn-primary">{{ $btext }}</button>
                                        <button type="Reset" class="btn btn-primary">Reset</button>
                                    </div>
                                </div>
                        </form>
                    </div>
                </div>
            </div>
            <!-- /.container-fluid -->
        </div>
    </div>
@endsection


<script>
    // document.addEventListener("DOMContentLoaded", function() {
    //     // Get the container for partner rows
    //     const partnerRowContainer = document.getElementById('partner-row-container');

    //     // Get the plus button
    //     const addPartnerRowButton = document.getElementById('add-partner-row');

    //     // Add an event listener to the plus button
    //     addPartnerRowButton.addEventListener('click', function() {

    //         const headerRow = partnerRowContainer.querySelector('.bg-red').cloneNode(true);

    //         // Clone the partner row template inside the click event
    //         const partnerRowTemplate = partnerRowContainer.querySelector('.partner-row').cloneNode(
    //         true);

    //         // Clear input fields in the new row
    //         const inputFields = partnerRowTemplate.querySelectorAll('input, textarea');
    //         inputFields.forEach(function(input) {
    //             input.value = '';
    //         });

    //         // Toggle the plus/minus icon
    //         const icon = headerRow.querySelector('i');
    //         if (icon.classList.contains('fa-plus')) {
    //             icon.classList.remove('fa-plus');
    //             icon.classList.add('fa-minus');
    //         }

    //         // Append the new rows to the container
    //         partnerRowContainer.appendChild(headerRow);
    //         partnerRowContainer.appendChild(partnerRowTemplate);

    //         // Add event listener to the minus button
    //         const minusButton = headerRow.querySelector('.fa-minus');
    //         minusButton.addEventListener('click', function() {
    //             // Remove the header row and the corresponding partner row
    //             partnerRowContainer.removeChild(headerRow);
    //             partnerRowContainer.removeChild(partnerRowTemplate);
    //         });
    //     });
    // });
</script>
