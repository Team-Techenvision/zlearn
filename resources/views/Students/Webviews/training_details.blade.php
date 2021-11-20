<!DOCTYPE html>
<html lang="en"
    dir="ltr">
    <head>
        @include('Students.Common.student_head')
    </head>
    <body class="layout-app ">
        <div class="preloader">
            <div class="sk-chase">
                <div class="sk-chase-dot"></div>
                <div class="sk-chase-dot"></div>
                <div class="sk-chase-dot"></div>
                <div class="sk-chase-dot"></div>
                <div class="sk-chase-dot"></div>
                <div class="sk-chase-dot"></div>
            </div>
            
            <!-- More spinner examples at https://github.com/tobiasahlin/SpinKit/blob/master/examples.html -->
        </div>
        
        <!-- Drawer Layout -->
        
        <div class="mdk-drawer-layout js-mdk-drawer-layout"
            data-push
            data-responsive-width="992px">
            <div class="mdk-drawer-layout__content page-content">
                
                <!-- Header -->
                
                <!-- Navbar -->
                
                @include('Students.Common.student_navbar')
                
                <!-- // END Navbar -->
                
                <!-- // END Header -->
                {{-- <div class="pt-32pt">
                    <div class="container page__container d-flex flex-column flex-md-row align-items-center text-center text-sm-left">
                        <div class="flex d-flex flex-column flex-sm-row align-items-center mb-24pt mb-md-0">
                            <div class="mb-24pt mb-sm-0 mr-sm-24pt">
                                <h2 class="mb-0">RESUME</h2>
                                <ol class="breadcrumb p-0 m-0">
                                    <li class="breadcrumb-item"><a href="JavaScript:Void(0);">Student</a></li>
                                    <li class="breadcrumb-item active">
                                        <!-- ACADEMIC Details -->
                                        {{$page_title}}
                                    </li>
                                </ol>
                            </div>
                        </div>
                        
                    </div>
                </div> --}}
                  {{-- ==================================== --}}
                  <div class="py-32pt navbar-submenu">
                    <div class="container page__container">
                        <div class="progression-bar progression-bar--active-accent">
                            <a href="JavaScript:Void(0);"
                               class="progression-bar__item progression-bar__item--complete text-white">
                                <span class="progression-bar__item-content">
                                    <i class="material-icons progression-bar__item-icon bg-success">done</i>
                                    <span class="progression-bar__item-text h5 mb-0 text-uppercase text-blue1">BASIC INFO</span>
                                </span>
                            </a>
                            <a href="JavaScript:Void(0);"
                               class="progression-bar__item progression-bar__item--complete text-white">
                                <span class="progression-bar__item-content">
                                    <i class="material-icons progression-bar__item-icon  bg-success"> done</i>
                                    <span class="progression-bar__item-text h5 mb-0 text-uppercase text-blue1">ACADEMICS INFO</span>
                                </span>
                            </a>
                            <a href="JavaScript:Void(0);" class="progression-bar__item progression-bar__item--complete text-white">
                             <span class="progression-bar__item-content">
                                 <i class="material-icons progression-bar__item-icon bg-primary bg-success">done</i>
                                 <span class="progression-bar__item-text h5 mb-0 text-uppercase text-blue1">SKILLS INFO</span>
                             </span>
                         </a>
                            <a href="JavaScript:Void(0);"
                               class="progression-bar__item progression-bar__item--complete ">
                                <span class="progression-bar__item-content">
                                    <i class="material-icons progression-bar__item-icon bg-timesheet-color-primary"></i>
                                    <span class="progression-bar__item-text h5 mb-0 text-uppercase text-blue1">RESUME</span>
                                </span>
                            </a>
                            
                        </div>
                    </div>
                </div>
                {{-- ====================================== --}}
                <!-- BEFORE Page Content -->
                <!-- // END BEFORE Page Content -->
                <!-- Page Content -->
                <div class="container page__container">
                    <div class="page-section">
                        <!-- =================================-->
                        <div class="any_message row col-12">
                            @if ($errors->any())
                            <div class="alert alert-danger col-12">
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                                </button>
                                <ul>
                                    @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                    @endforeach
                                </ul>
                            </div>
                            @endif
                            @if(session()->has('alert-danger'))
                            <div class="alert alert-danger col-12">
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                                </button>
                                {{ session()->get('alert-danger') }}
                            </div>
                            @endif
                            @if(session('success'))
                            <div class="alert alert-success col-12">
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                                </button>
                                {{ session('success') }}
                            </div>
                            @endif
                        </div>
                
                        <!-- =================================== -->
                        <form class="form-group col-md-10 m-auto" action="{{url('Training-Info')}}" method="POST" enctype="multipart/form-data">
                            @csrf

                            <div class="form-row">                                
                                <div class="col-12 col-md-12 mb-3">
                                    <label class="form-label text-uppercase" for="">Technical Skills:</label>                                     
                                     <textarea class="form-control" name="tech_skill" placeholder="Enter Tech Skills (MS Office, C, Java,  Autocad etc)"  >@if($Technical_skill){{$Technical_skill->tech_skill}}@endif</textarea>
                                </div>
                            </div>
                            <!-- <div class="form-group row ">
                                <label class="form-label col-md-3 p-2">CERTIFICATIONS:</label>
                                <input type="text" class="form-control col-md-9" name="sslc_per" id="" placeholder="Enter Any Certifications" >
                            </div> -->
                            <div id="certificate_section" class="border p-2">
                              
                                <div class="form-row">
                                    <div class="col-12 col-md-12 mb-3">
                                        <label class="form-label text-uppercase" for="">Certifications:</label> 
                                        <a href="javascript:void(0);" class="btn btn-success float-right h3" id="certificate" title="Add More">+</a>                                     
                                    </div>
                                </div>
                                @php
                                    $i=0;
                                @endphp
                                @if(count($Certification) > 0)
                                    @foreach ($Certification as $item)
                                    <div class="form-row">
                                        <div class="col-12 col-md-3 form-group p-1 h6">
                                            Certifications :- {{$item->Certification_name}}                                        
                                        </div>
                                        <div class="col-12 col-md-3  form-group p-1 h6">
                                            Upload Certifications :- @if($item->upload_certificat)Yes @else No @endif
                                        </div> 
                                        <div class="col-12 col-md-3" id="pop_<?php echo ++$i; ?>">                                  
                                            <img class="document_img" id="imageresource_<?php echo ++$i; ?>" src="{{asset($item->upload_certificat)}}" alt="" width="20" height="20">
                                         </div>    
                                        <div class="col-12 col-md-2 form-group p-1 h6">
                                            <a href="{{url('Delete_Certificate')}}/{{$item->id}}" class="btn btn-danger float-right" title="Delete"><i class="material-icons">delete</i></a>
                                        </div>
                                        <hr style="w-50 m-auto text-dark">
                                    </div> 
                                    @endforeach                                    
                                {{-- @else
                                    <div class="form-row">
                                        <div class="col-12 col-md-6 mb-3">
                                            <label class="form-label" for="">CERTIFICATIONS</label>
                                            <input type="text" class="form-control" name="certificate[]" id="" placeholder="Enter Any Certifications" >
                                        </div>
                                        <div class="col-12 col-md-6 mb-3">
                                            <label class="form-label" for="">UPLOAD CERTIFICATIONS</label>
                                            <input type="file" class="form-control" id="" placeholder="Enter Year Of Passing" name="upload_certificat[]" >
                                        </div>
                                    </div> --}}
                                @endif
                            </div>
                            <div id="project_details" class="border p-2">
                                <div class="form-row">
                                    <div class="col-12 col-md-12 mb-3">
                                        <label class="form-label" for="">Academic Projects:</label>
                                        <a href="javascript:void(0);" class="btn btn-success float-right h3" title="Add More" id="add_project" >+</a>
                                    </div>
                                </div>
                                @if(count($Academic_project) > 0)
                                    <div class="form-row">
                                        @foreach ($Academic_project as $item)
                                            <div class="col-md-12  form-group p-1 h6">
                                                <a href="{{url('Delete-Project')}}/{{$item->id}}" class="btn btn-danger float-right" title="Delete" id="delete_proj"><i class="material-icons">delete</i></a>
                                             </div>   
                                            <div class="col-md-6  form-group p-1 h6">
                                                Project Name :- {{$item->project_name}}
                                                
                                            </div>
                                            <div class="col-md-6  form-group p-1 h6">
                                                Team/single :- {{$item->team_size}}
                                            </div>
                                            <div class="col-12  form-group p-1 h6">
                                                Project details :- {{$item->project_detail}}
                                            </div>
                                             <hr style="w-50 m-auto text-dark"> 
                                        @endforeach
                                    </div>                                        
                                {{-- @else 
                                    <div class="form-row">   
                                        <div class="col-12 col-md-6 mb-3">
                                            <label class="form-label text-uppercase" for="">Project Name:</label>
                                            <input type="text" class="form-control" id="" placeholder="Enter Project Name" name="project_name[]" >
                                        </div>
                                        <div class="col-12 col-md-6 mb-3">
                                            <label class="form-label text-uppercase" for="">Team/single:</label>
                                            <input type="number" class="form-control" min="1" id="" value="1" placeholder="Enter Project Team Size" name="team_size[]" >

                                        </div>
                                    </div>
                                    <div class="form-row">
                                        <div class="col-12 col-md-12 mb-3">
                                            <label class="form-label text-uppercase" for="">Project details:</label>                                     
                                            <textarea class="form-control" name="project_detail[]" placeholder="Enter Project Details" ></textarea>
                                        </div>                                
                                    </div> --}}
                                @endif    
                            </div>
                            <div id="internship_div" class="border p-2 mb-4"> 
                                <div class="form-row">
                                    <div class="col-12 col-md-12 mb-3">
                                        <label class="form-label text-uppercase" for="">Internships:</label> 
                                        <a href="javascript:void(0);" class="btn btn-success float-right h3" id="enter_ship" title="Add More">+</a>                                     
                                    </div>
                                </div>
                                @php
                                    $j = 1;
                                @endphp
                                @if(count($Interships) > 0)
                                    <div class="form-row">
                                        @foreach ($Interships as $item)
                                       
                                           
                                            <div class="col-md-5  form-group p-1 h6">
                                                Company Name :- {{$item->int_comp_name}}                                                
                                            </div>
                                            <div class="col-md-5  form-group p-1 h6">
                                                Duration <small>(In Months)</small> :- {{$item->intship_duration}}
                                            </div>                                           
                                            <div class="col-12 col-md-5  form-group p-1 h6">
                                                Roles & Responsibilities :- {{$item->your_roles}}
                                            </div>
                                            {{-- <div class="col-12 col-md-5  form-group p-1 h6">
                                                Certification :- Preview
                                            </div> --}}
                                            <div class="col-12 col-md-5" id="pop_<?php echo ++$j; ?>">                                  
                                                <img class="document_img" id="imageresource_<?php echo ++$j; ?>" src="{{asset($item->intern_certificate)}}" alt="" width="20" height="20">
                                             </div>    
                                            <div class="col-12 col-md-2  form-group p-1 h6">
                                                <a href="{{url('Delete-Intship')}}/{{$item->id}}" class="btn btn-danger float-right delete_intership" title="Delete" ><i class="material-icons">delete</i></a>
                                             </div> 
                                        @endforeach 
                                    </div>                                       
                                {{-- @else
                                  <div class="form-row">
                                    <div class="col-12 col-md-6 mb-3">
                                        <label class="form-label text-uppercase" for="">COMPANY Name:</label>
                                        <input type="text" class="form-control" name="int_comp_name[]" id="" placeholder="Enter Company Name" >
                                    </div>
                                    <div class="col-12 col-md-6 mb-3">
                                        <label class="form-label" for="">DURATION <small>(In Months)</small>:</label>
                                        <input type="number" class="form-control" min="1" id="" placeholder="Enter Year Of Graduated" value="1" name="intship_duration[]">
                                    </div>
                                </div>
                               
                                <div class="form-row">
                                    <div class="col-12 col-md-6 mb-3">
                                        <label class="form-label text-uppercase" for="">ROLES & RESPONSIBILITIES:</label>
                                        <input type="text" class="form-control" name="your_roles[]" id="" placeholder="Enter Your Roles" >
                                    </div>                                
                                </div> --}}
                                @endif
                            </div>    

                            <div class="form-row">
                                 <div class="col-12 col-md-6 mb-3">
                                    <label class="form-label" for="">LinkedIn Profile:</label>
                                    <input type="text" class="form-control" id="" placeholder="Enter Linkedin Profile Link" value="@if($Technical_skill){{$Technical_skill->linkedin_link}}@endif" name="linkedin_link">
                                </div>
                                <div class="col-12 col-md-6 mb-3">
                                    <label class="form-label text-uppercase" for="">Languages Known :</label>
                                    <input type="text" class="form-control" id="" placeholder="Java, Python, C, C++ " value="@if($Technical_skill){{$Technical_skill->known_language}}@endif" name="known_language">
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="col-12 col-md-6 mb-3">
                                    <label class="form-label text-uppercase" for="">Achievements ( Academic / Technical ):</label>
                                    {{-- <input type="text" class="form-control" id="" placeholder="Enter Achievements If Any" value="@if($Technical_skill){{$Technical_skill->achievement}}@endif" name="achievement"> --}}
                                    <textarea id="" class="form-control" cols="80" rows="5" name="achievement" placeholder="Enter Achievements If Any">@if($Technical_skill){{$Technical_skill->achievement}}@endif</textarea>
                                </div>
                                <div class="col-12 col-md-6 mb-3">
                                    <label class="form-label text-uppercase" for="">Hobbies:</label>
                                    {{-- <input type="text" class="form-control" id="" placeholder="Enter Your Hobbies" value="@if($Technical_skill){{$Technical_skill->hobbies}}@endif" name="hobbies"> --}}
                                    <textarea id="" class="form-control" cols="80" rows="5" name="hobbies" placeholder="Enter Your Hobbies">@if($Technical_skill){{$Technical_skill->hobbies}}@endif</textarea>
                                </div>
                            </div>

                            <div class="form-row">
                                <div class="col-12 col-md-6 mb-3">
                                    <label class="form-label text-uppercase" for="">Extra - Curricular Activities:</label>
                                    {{-- <input type="text" class="form-control" id="" placeholder="Participated in Sports/ Competition/ Cultural Events etc" value="@if($Technical_skill){{$Technical_skill->extracurricular}}@endif" name="extracurricular"> --}}
                                    <textarea id="" class="form-control" cols="80" rows="5" name="extracurricular" placeholder="Participated in Sports/ Competition/ Cultural Events etc">@if($Technical_skill){{$Technical_skill->extracurricular}}@endif</textarea>
                                </div>
                                <div class="col-12 col-md-6 mb-3">
                                    <label class="form-label text-uppercase" for="">Skills Sets :</label>
                                    {{-- <input type="text" class="form-control" id="" placeholder="Leadership Skills, Communication Skills, Creativity " value="@if($Technical_skill){{$Technical_skill->skil_sets}}@endif" name="skil_sets"> --}}
                                    <textarea id="" class="form-control" cols="80" rows="5" name="skil_sets" placeholder="Leadership SKills/Communication Skills/ Creativity etc">@if($Technical_skill){{$Technical_skill->skil_sets}}@endif</textarea>
                                </div>
                            </div>

                            <div class="form-row">                                 
                                <div class="col-12 col-md-12 mb-3">
                                    <label class="form-label" for="">Workshops/Seminars/Training Attended:</label>
                                    <textarea class="form-control" id="" placeholder="Attended seminar on Robotics , Placement Training conducted by ZESTECH etc" name="seminar_traning" >@if($Technical_skill){{$Technical_skill->seminar_traning}}@endif</textarea>
                                </div>
                            </div>

                            <div class="form-row">                                 
                                <div class="col-12 col-md-12 mb-3">
                                    <label class="form-label" for="">Career Objective:</label>
                                    <textarea class="form-control" id="" placeholder="Enter Career Objective" name="career_object" >@if($Technical_skill){{$Technical_skill->career_object}}@endif</textarea>
                                </div>
                            </div>
                            <div class="form-group row">
                                <div class="col-10 m-auto text-right pt-3">
                                    <!-- <button type="reset" name="reset" class="btn btn-secondary mr-2">Reset</button> -->
                                    <a href="{{url('resume-page-two')}}" class="btn btn-secondary mr-2" >Back</a>
                                    <button name="submit" class="btn btn-success">Save</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>


                <!-- ======================================== -->
                   

                <!-- // END Page Content -->
                <!-- Footer -->
                <!-- @include('Students.Common.student_footertext') -->
                <!-- // END Footer -->
            </div>
            <!-- // END drawer-layout__content -->
            <!-- Drawer left sidebar start -->
            @include('Students.Common.student_sidebar')
            <!-- // END Drawer sidebar ends -->
        </div>

             <!--Certificate  Modal -->
                <div class="modal fade" id="imagemodal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                        
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        </div>
                        <div class="modal-body">
                            <img src="" id="imagepreview" style="width: 100%; height: auto;">
                        </div>
                        
                    </div>
                    </div>
                </div>

        <!-- // END Drawer Layout -->
        @include('Students.Common.student_footer')
        
         <link href = "https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css"
         rel = "stylesheet">
        <!-- <script src = "https://code.jquery.com/jquery-1.10.2.js"></script> -->
        <script src = "https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
         @toastr_js
        @toastr_render
        <script>
            $(document).ready(function()
            {
                $('#year_graduated').datepicker({
                    minDate: 1,
                    dateFormat: 'yy-mm-dd'
                });

                $('#add_project').click(function()
                {
                     $("#project_details").append('<div class="form-row proj_section border pt-2 pb-2"><div class="col-12 col-md-5 mb-3"><label class="form-label text-uppercase" for="">Project Name:</label><input type="text" class="form-control" id="" placeholder="Enter Project Name" name="project_name[]" required=""></div><div class="col-12 col-md-5 mb-3"><label class="form-label text-uppercase" for="">Team/single:</label><input type="number" class="form-control" min="1" id="" value="1" placeholder="Enter Project Team Size" name="team_size[]" required=""></div><div class="col-12 col-md-2"><a href="javascript:void(0);" id="remCF" class="remCF btn btn-danger float-right mt-4"><i class="material-icons">delete</i></a></div><div class="form-row col-12"><div class="col-12 col-md-12 mb-3"><label class="form-label" for="">Project details:</label><textarea class="form-control col-12" name="project_detail[]" placeholder="Enter Project Details" required=""></textarea></div> </div></div>');
                });
 
                $('#project_details').on('click','.remCF',function() 
                {
                    //alert("!!");
                    $(this).parent().parent().remove();
                });

                $('#enter_ship').click(function()
                {
                    $("#internship_div").append('<div class="form-row enter_ship col-12 border pt-2 pb-2"><div class="col-12 col-md-5 mb-3"><label class="form-label text-uppercase" for="">Company Name</label><input type="text" class="form-control" name="int_comp_name[]" id="" placeholder="Enter Company Name" required=""></div><div class="col-12 col-md-5 mb-3"><label class="form-label" for="">Duration <small>(In Months)</small>:</label><input type="number" class="form-control" min="1" id="" value="1" placeholder="Duration" name="intship_duration[]"></div><div class="col-12 col-md-2"><a href="javascript:void(0);" id="remCF1" class="remCF1 btn btn-danger float-right mt-4"><i class="material-icons">delete</i></a></div> <div class="form-row col-12"><div class="col-12 col-md-6 mb-3"><label class="form-label" for="">Roles & Responsibilities:</label><input type="text" class="form-control col-12" name="proj_roles[]" id="" placeholder="Enter Your Roles" required=""></div><div class="col-12 col-md-6 mb-3"><label class="form-label" for="">Upload Certifications</label><input type="file" class="form-control" id="" placeholder="Enter Certificate" name="intern_certificate[]" ></div></div></div> ');
                });

                $('#internship_div').on('click','.remCF1',function() 
                {
                    //alert("!!");
                    $(this).parent().parent().remove();
                });


                $('#certificate').click(function()
                {
                    $("#certificate_section").append('<div class="form-row border pt-2 pb-2"><div class="col-12 col-md-5 mb-3"> <label class="form-label" for="">Certifications</label><input type="text" class="form-control" name="certificate[]" id="" placeholder="MS-OFFICE, C, C++, JAVA etc " required=""></div><div class="col-12 col-md-5 mb-3"><label class="form-label" for="">Upload Certifications</label><input type="file" class="form-control" id="" placeholder="Enter Year Of Passing" name="upload_certificat[]" ></div><div class="col-12 col-md-2 mt-4"><a href="javascript:void(0);" id="remCF1" class="remCF2 btn btn-danger float-right"><i class="material-icons">delete</i></a></div>');
                });

                $('#certificate_section').on('click','.remCF2',function() 
                {
                    //alert("!!");
                    $(this).parent().parent().remove();
                });
                              
            });
        </script>
        <script>
            $(document).ready(function()
            {
                //  $('.delete_intership').click(function()
                // {
                //     ///alert($(this).attr('data'));
                //     let id = $(this).attr('data');
                //     if(id)
                //     {
                //          $.ajaxSetup({
                //                 headers: {
                //                     'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                //                 }
                //             });
                //      $.ajax({
                //             url: "{{ url('Delete-Intship')}}",
                //             type: "post",
                //             data: {Int_id : id},
                //             success: function(data)
                //             {
                //                // $("#employees").html(data);
                //                alert(data);
                //             }
                //         });
                //     }
                // });
            });
        </script>

<script>
    $("img").on("click", function() {
        // alert($('#'+this.id).attr('src'));
        $('#imagepreview').attr('src', $('#'+this.id).attr('src')); // here asign the image to the modal when the user click the enlarge link
        $('#imagemodal').modal('show'); // imagemodal is the id attribute assigned to the bootstrap modal, then i use the show function
    });
</script>
    </body>
</html>