@push('title')
<title>REFERENCES Form</title>
@endpush
@extends("layout.main")

@section('main-section')
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
    </div>

    <div class="content">
        <div class="container-fluid">
            @if(session('success'))
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
                    <form action="{{url($url)}}" method="POST">
                        @csrf <!-- Include CSRF token for Laravel form submission -->

                        <div id="partner-row-container">
                            <div class="row mb-3 bg-red d-flex justify-content-between">
                                <div>
                                    <h6 style="font-weight: 700" class="mt-2 ml-2">{{$title}}</h6>
                                </div>
                                <div>
                                    <a href="#" id="add-partner-row" >
                                        <i class="fas fa-plus mt-2 mr-2" style="color:white"></i>
                                    </a>
                                </div>
                            </div>



                            <div class="row mb-1 partner-row">

                                <div class="col-lg-4">
                                    <div class="form-group">
                                        <label for="name" class="text-nowrap">Name</label>
                                        <input type="text" class="form-control"  id="name" name="name[]" value="">
                                        @error('name')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>
                                </div>

                                <div class="col-lg-6">
                                    <div class="form-group">
                                        <label for="address" class="text-nowrap">Address</label>
                                        <textarea class="form-control" id="address" name="address[]" rows="1"></textarea>
                                        @error('address')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>
                                </div>


                                <div class="col-lg-3">
                                    <div class="form-group">
                                        <label for="city" class="text-nowrap">City</label>
                                        <input type="text" class="form-control" id="city" name="city[]" value="">
                                        @error('city')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>
                                </div>

                                <div class="col-lg-3">
                                    <div class="form-group">
                                        <label for="pincode" class="text-nowrap">Pincode</label>
                                        <input type="text" class="form-control"  id="pincode" name="pincode[]" value="">
                                        @error('pincode')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>
                                </div>

                                <div class="col-lg-3">
                                    <div class="form-group">
                                        <label for="state" class="text-nowrap">State</label>
                                        <input type="text" class="form-control"  id="state" name="state[]" value=""">
                                        @error('state')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>
                                </div>

                                <div class="col-lg-3">
                                    <div class="form-group">
                                        <label for="country" class="text-nowrap">Country</label>
                                        <input type="text" class="form-control"  id="country" name="country[]" value="">
                                        @error('country')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>
                                </div>

                                <div class="col-lg-3">
                                    <div class="form-group">
                                        <label for="phone" class="text-nowrap">Phone</label>
                                        <input type="text" class="form-control"  id="phone" name="phone[]" value="">
                                        @error('phone')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>
                                </div>

                                <div class="col-lg-3">
                                    <div class="form-group">
                                        <label for="mobile" class="text-nowrap">Mobile</label>
                                        <input type="text" class="form-control"  id="mobile" name="mobile[]" value="">
                                        @error('mobile')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>
                                </div>

                                <div class="col-lg-3">
                                    <div class="form-group">
                                        <label for="email" class="text-nowrap">Email</label>
                                        <input type="email" class="form-control"  id="email" name="email[]" value="">
                                        @error('email')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>
                                </div>

                                <div class="col-lg-3">
                                    <div class="form-group">
                                        <label for="applicntrelation" class="text-nowrap">Relation With Applicant</label>
                                        <input type="text" class="form-control"  id="applicntrelation" name="applicntrelation[]" value="">
                                        @error('applicntrelation')
                                            <span class="text-danger">{{ $message }}</span>
                                        @enderror
                                    </div>
                                </div>

                            </div>


                        </div>

                        <div class="row mb-1">
                            <div class="col-lg-12">
                                <button type="submit" class="btn btn-primary">{{$btext}}</button>
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


{{-- <script>
    document.addEventListener("DOMContentLoaded", function() {
        // Get the container for partner rows
        const partnerRowContainer = document.getElementById('partner-row-container');

        // Get the plus button
        const addPartnerRowButton = document.getElementById('add-partner-row');

        // Add an event listener to the plus button
        addPartnerRowButton.addEventListener('click', function() {
            // Clone the header row
            const headerRow = partnerRowContainer.querySelector('.bg-red').cloneNode(true);

            // Clone the partner row
            const partnerRowTemplate = partnerRowContainer.querySelector('.partner-row').cloneNode(true);

            // Toggle the plus/minus icon
            const icon = headerRow.querySelector('i');
            if (icon.classList.contains('fa-plus')) {
                icon.classList.remove('fa-plus');
                icon.classList.add('fa-minus');
            }

            // Append the new rows to the container
            partnerRowContainer.appendChild(headerRow);
            partnerRowContainer.appendChild(partnerRowTemplate);

            // Add event listener to the minus button
            const minusButton = headerRow.querySelector('.fa-minus');
            minusButton.addEventListener('click', function() {
                // Remove the header row and the corresponding partner row
                partnerRowContainer.removeChild(headerRow);
                partnerRowContainer.removeChild(partnerRowTemplate);
            });
        });
    });
</script> --}}
<script>
    document.addEventListener("DOMContentLoaded", function() {
        // Get the container for partner rows
        const partnerRowContainer = document.getElementById('partner-row-container');

        // Get the plus button
        const addPartnerRowButton = document.getElementById('add-partner-row');

        // Add an event listener to the plus button
        addPartnerRowButton.addEventListener('click', function() {

            // echo "hello";
            // exit();
            // Clone the header row
            const headerRow = partnerRowContainer.querySelector('.bg-red').cloneNode(true);

            // Clone the partner row template inside the click event
            const partnerRowTemplate = partnerRowContainer.querySelector('.partner-row').cloneNode(true);

            // Clear input fields in the new row
            const inputFields = partnerRowTemplate.querySelectorAll('input, textarea');
            inputFields.forEach(function(input) {
                input.value = '';
            });

            // Toggle the plus/minus icon
            const icon = headerRow.querySelector('i');
            if (icon.classList.contains('fa-plus')) {
                icon.classList.remove('fa-plus');
                icon.classList.add('fa-minus');
            }

            // Append the new rows to the container
            partnerRowContainer.appendChild(headerRow);
            partnerRowContainer.appendChild(partnerRowTemplate);

            // Add event listener to the minus button
            const minusButton = headerRow.querySelector('.fa-minus');
            minusButton.addEventListener('click', function() {
                // Remove the header row and the corresponding partner row
                partnerRowContainer.removeChild(headerRow);
                partnerRowContainer.removeChild(partnerRowTemplate);
            });
        });
    });
</script>








