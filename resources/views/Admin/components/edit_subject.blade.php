 
<div class="col-12">
    <div class="card">
        <div class="card-body">

            {{-- <h4 class="card-title">Buttons example</h4> --}}
            {{-- <p class="card-title-desc">The Buttons extension for DataTables provides a common set of options, API methods and styling to display buttons on a page that will interact with a DataTable. The core library provides the based framework upon which plug-ins can built.
            </p> --}}
            <div class="col-md-8 m-auto">                                           
                <form action="{{url('submit-subject')}}" method="POST"> 
                @csrf                       
                
                <input type="hidden" class="form-control" name="id" value="{{$subject->id}}" required>
                    <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Subject Name</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" name="sub_name" required placeholder="Enter Subject Name" value="{{$subject->subject_name}}" />
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Semester</label>
                        <div class="col-sm-9">
                            <select class="form-control" name="semister_id" required>
                                <option value="">Select Semester</option>
                                @foreach($semister as $r)                                     
                                    <option value="{{$r->id}}" @if($r->id == $subject->semister_id)selected @endif>{{$r->semister_name}}</option> 
                                @endforeach
                            </select>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Standard</label>
                        <div class="col-sm-9">
                            <select class="form-control" name="standard_id" required>
                                <option value="">Select Standard</option>
                                @foreach($standerds as $r) 
                                <option value="{{$r->id}}" @if($r->id == $subject->standard_id)selected @endif>{{$r->standerd_name}}</option> 
                                @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Status</label>
                        <div class="col-sm-9">
                            <select class="form-control" name="status">                                    
                                <option value="1">Active</option>
                                <option value="0">De-Active</option>                                     
                            </select>
                        </div>
                    </div>
                    <div class="form-group text-center mt-5">
                        <div>
                        <button type="reset" class="btn btn-secondary waves-effect m-l-5">
                            Cancel
                            </button>
                            <button type="submit" class="btn btn-primary waves-effect waves-light">
                            Submit
                            </button>
                           
                        </div>

                        <div class="any_message mt-3">
                            @if ($errors->any())
                                <div class="alert alert-danger">
                                    <ul>
                                        @foreach ($errors->all() as $error)
                                            <li>{{ $error }}</li>
                                        @endforeach
                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </ul>
                                </div>
                            @endif
                            @if(session()->has('alert-danger'))
                                <div class="alert alert-danger">
                                    {{ session()->get('alert-danger') }}
                                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                            @endif
                                @if(session()->has('alert-success'))
                                <div class="alert alert-success">
                                    {{ session()->get('alert-success') }}
                                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                            @endif
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- end col -->
