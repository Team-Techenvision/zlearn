
<div class="col-12">
    <div class="card">
        <div class="card-body">

            {{-- <h4 class="card-title">Buttons example</h4> --}}
            {{-- <p class="card-title-desc">The Buttons extension for DataTables provides a common set of options, API methods and styling to display buttons on a page that will interact with a DataTable. The core library provides the based framework upon which plug-ins can built.
            </p> --}}
            <div class="col-md-8 m-auto">
                                       
                <form class="" action="{{url('submit-test-two')}}" method="POST">                        
                @csrf 

                    <div class="form-group row">
                        <label class="col-sm-3 col-form-label">Test Name</label>
                        <div class="col-sm-9">
                            <input type="text" class="form-control" name="test_name"  value="{{ $test->test_name }}" readonly/>
                        </div>
                    </div>

                    <input type="hidden" name="test_id" value="{{$test->id}}">
                    <div class="form-group row">
                        <label class="control-label col-sm-3"> Select Chapter</label>
                        <div class="col-sm-9">
                            <select class="select2 form-control select2-multiple" multiple="multiple" name="chapter_id[]" data-placeholder="Choose ..." required>
                                 @foreach($chapters as $r) 
                                    <option value="{{$r->chapter_id}}">{{$r->chapter_name}}</option> 
                                @endforeach 
                            </select>
                        </div>
                    </div>

                        @foreach($test_section as $r) 
                        <div class="form-group row">
                            <label class="col-md-3 col-form-label"> {{$r->test_section_name}} </label>
                            <input type="hidden" name="test_tb_section_id[]"  value="{{ $r->test_tb_section_id }}">
                            <div class="col-md-9">
                                <input type="text" class="form-control" name="section_time[]"  placeholder="Enter Minute " />
                            </div>
                        </div>
                        @endforeach

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


