<!DOCTYPE html>
<html>
<head>
	<title>Resume</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<link rel="shortcut icon" href="{{ asset('/1.png') }}">
	<style>
		body{
            margin: 30px;
            padding: 0px;
        }
        @page { margin:0px; padding: 0px; }
       
            .page-break {
                page-break-after: always;
            }

            .page-break:last-child {
                page-break-after: avoid;
            }
      
            p{
                margin-bottom: 0px;
                margin-top: 5px;
                font-size: 1rem;
                text-align: left;
                line-height: 1.5!important;
            }
            h4{
                margin-top: 5px;
                margin-bottom: 0px;
                
            }
            .h4{
                font-size: 1rem;
                margin-top: 5px;
                margin-bottom: 0px;
            }
            .p{
                margin-bottom: 0px;
                margin-top: 5px;
                text-align: left;
                line-height: 1.5!important;
            }
            .bg-grey{
                background-color: #366092;
                color: #fff;
            }
            .sub-heading{
                margin-top: 15px;
                font-size: 1.1rem;
                line-height: 1.7;
            }
            .border-table{
                width: 100%;
                border: 1px solid #000;
                padding:15px 0px;
                border-collapse: collapse;
            }
            .border-table td, th{
                border: 1px solid #000;
                text-align: center;
            }
            .border-table th{
                background-color: #366092;
                color: #fff;
                padding-top: 10px;
                padding-bottom:10px;
                
            }
	</style>
</head>
<body>
    <div class="content page-break">
        <table style="width: 100%; border: none !important; ">
            <tr>
                <td>
                    <table style="width: 100%; text-align:center;">
                        <tr>
                            <td width="25%" style="vertical-align: top;"><p style="font-size:1.2rem; font-weight:bold; color:#00008B;">{{$student_info->name}}  {{$student_info->l_name}}</p>
                                <p> <b>Address</b> </p>
                                <p> {{$student_info->address}} </p>
                            </td>
                            <td width="50%" >  <img src="@if($student_info->image){{public_path($student_info->image)}}@endif" alt=""  width="200" height="200" style="border-radius: 50%;"></td>
                            <td width="25%" style="vertical-align: top;"> 
                                <p></p> 
                                <p> {{$student_info->email}}</p> 
                                <p> {{$student_info->phone}}</p>
                            </td>
                        </tr>
                    </table>
            </td>
            </tr>
                       
            <tr style="width: 100%;">
                <td style="width : 100%; ">
                   <h4 class="sub-heading"> <span class="bg-grey "> Career Objectives </span> </h4>      
                </td>                           
            </tr>
            <tr>
                <td>
                    <p style="white-space:pre-wrap;">{{$student_info->career_object}}</p>
                </td>
            </tr>

            <tr>
                <td>
                    <h4 class="sub-heading"> <span class="bg-grey">Academic Qualifications </span></h4>
                </td>
            </tr>

            <tr>
                <td>
                <table class="border-table">
                        <tr>
                            <th>Qualification</th>
                            <th>University / Board</th>
                            <th>Institution</th>
                            <th>Year of Passing</th>
                            <th>Percentage/ CGPA</th>
                        </tr>

                        @if($student_info->education == 'PG')
                    
                        @php
                            $college_name = DB::table('colleges')->where('id', $student_info->collage_id)->pluck('college_name')->first();
                            $degree =   DB::table('courses')->where('id', $student_info->degree)->pluck('course_name')->first();
                            $branch_name =  DB::table('branches')->where('id', $student_info->branch_id)->pluck('branch_name')->first();
                        @endphp
                        {{-- <p> <span>{{$degree}}</span>   <span> <b>{{$branch_name}}</b> </span> <span>{{$student_info->year_of_pass_ug}}</span> <span> <b>{{$college_name}} </b></span>  </p> --}}
                        <tr>
                            <td>{{$degree}}</td>
                            <td>{{$student_info->university}}</td>
                            <td>{{$college_name}}</td>   
                            <td>{{$student_info->year_of_pass_pg}}</td> 
                            <td>{{$student_info->avg_percentage_pg}}</td>               
                        </tr>
    
                        <tr>
                            <td>{{$student_info->cource_ug}}</td>
                            <td>{{$student_info->university_ug}}</td>
                            <td>{{$student_info->college_ug}}</td>
                            <td>{{$student_info->year_of_pass_ug}}</td>
                            <td>{{$student_info->avg_percentage_ug}}</td>                      
                        </tr>
                        
                        @else
                        @php
                            $college_name = DB::table('colleges')->where('id', $student_info->collage_id)->pluck('college_name')->first();
                            $degree =   DB::table('courses')->where('id', $student_info->degree)->pluck('course_name')->first();
                            $branch_name =  DB::table('branches')->where('id', $student_info->branch_id)->pluck('branch_name')->first();
                        @endphp
                        {{-- <p> <span>{{$degree}}</span>   <span> <b>{{$branch_name}}</b> </span> <span>{{$student_info->year_of_pass_ug}}</span> <span> <b>{{$college_name}} </b></span>  </p> --}}
                        <tr>
                            <td>{{$degree}}</td>
                            <td>{{$branch_name}}</td>
                            <td>{{$student_info->year_of_pass_ug}}</td>
                            <td>{{$college_name}}</td>                      
                        </tr>
                        @endif
                        <tr>
                            <td>SSLC / 10 <sup>th</sup></td>
                            <td>{{$student_info->sslc_board}}</td>
                            <td>{{$student_info->sslc_school}}</td>
                            <td>{{$student_info->sslc_year}}</td>
                            <td>{{$student_info->sslc_perce}}</td>                      
                        </tr>
                        @if($student_info->puc_year)
                        <tr>
                            <td> PUC / 12 <sup>th</sup></td>
                            <td>{{$student_info->puc_board}}</td>
                            <td>{{$student_info->puc_college}}</td>
                            <td>{{$student_info->puc_year}}</td>
                            <td>{{$student_info->puc_perce}}</td>                             
                        </tr>
                        @elseif($student_info->diploma_year){
                            <tr>
                                <td>Diploma</td>
                                <td>{{$student_info->diploma_university}}</td>
                                <td>{{$student_info->diplma_college}}</td>
                                <td>{{$student_info->diploma_year}}</td>
                                <td>{{$student_info->diploma_perce}}</td>                             
                            </tr>
                        }
                        @else{
    
                        }
                        @endif
                </table>
            </td>
            </tr>

            <tr>
                <td>
                    <span class="h4 "><b class="bg-grey">Personal Attributes</b>   </span> <span class="p">{{$student_info->skil_sets}}</span>
                </td>
            </tr>

            {{-- <tr>
                <td>
                    <h4>Education</h4>
                </td>
            </tr>
            <tr>
               <td>

                <table class="border-table">
                    <tr>
                        <th>Qualification</th>
                        <th>Branch</th>                       
                        <th>Year of Passing</th>
                        <th>College</th>
                    </tr>

                   
                    @if($student_info->education == 'PG')
                    
                    <tr>
                        <td>{{$student_info->cource_ug}}</td>
                        <td>{{$student_info->branch_ug}}</td>
                        <td>{{$student_info->year_of_pass_ug}}</td>
                        <td>{{$student_info->college_ug}}</td>                      
                    </tr>
                    @php
                        $college_name = DB::table('colleges')->where('id', $student_info->collage_id)->pluck('college_name')->first();
                        $degree =   DB::table('courses')->where('id', $student_info->degree)->pluck('course_name')->first();
                        $branch_name =  DB::table('branches')->where('id', $student_info->branch_id)->pluck('branch_name')->first();
                    @endphp
                    {{-- <p> <span>{{$degree}}</span>   <span> <b>{{$branch_name}}</b> </span> <span>{{$student_info->year_of_pass_ug}}</span> <span> <b>{{$college_name}} </b></span>  </p> --}
                    <tr>
                        <td>{{$degree}}</td>
                        <td>{{$branch_name}}</td>
                        <td>{{$student_info->year_of_pass_ug}}</td>
                        <td>{{$college_name}}</td>                      
                    </tr>
                    @else
                    @php
                        $college_name = DB::table('colleges')->where('id', $student_info->collage_id)->pluck('college_name')->first();
                        $degree =   DB::table('courses')->where('id', $student_info->degree)->pluck('course_name')->first();
                        $branch_name =  DB::table('branches')->where('id', $student_info->branch_id)->pluck('branch_name')->first();
                    @endphp
                    {{-- <p> <span>{{$degree}}</span>   <span> <b>{{$branch_name}}</b> </span> <span>{{$student_info->year_of_pass_ug}}</span> <span> <b>{{$college_name}} </b></span>  </p> --}
                    <tr>
                        <td>{{$degree}}</td>
                        <td>{{$branch_name}}</td>
                        <td>{{$student_info->year_of_pass_ug}}</td>
                        <td>{{$college_name}}</td>                      
                    </tr>
                    @endif
                </table>
                    
                    
                </td>
            </tr> --}}
          
          
            {{-- /*****************************
                    Intership 
            ************************************/ --}}


            @php
                $intership=  DB::table('interships')->where('user_id', Auth::user()->id)->get();
            //    dd($$student_info->user_id);
            @endphp
            @if($intership->count() > 0)
            <tr>
                <td>
                    <h4>Interships</h4>
                </td>
            </tr>
              
            <tr>
                <td>

                    <table class="border-table">
                        <tr>
                            <th>Company Name</th>
                            <th>Experience in Months</th>
                            <th>Role</th>                               
                        </tr>
                        @foreach ($intership as $item)
                        <tr>
                            <td>{{$item->int_comp_name}}</td>
                            <td>{{$item->intship_duration}}</td>
                            <td>{{$item->your_roles}}</td>                              
                        </tr>
                        @endforeach
                    </table>                   
                </td>
            </tr>
            @endif

             {{-- /*****************************
                    Technical Skills
            ************************************/ --}}

            <tr>
                <td>
                    <h4>Technical Skills</h4>
                </td>
            </tr>

            <tr>
                <td>
                  <p> {{$student_info->tech_skill}}</p>
                </td>
            </tr>

            {{-- /*****************************
                    Certification
            ************************************/ --}}


            @php
                $Certification =  DB::table('certifications')->where('user_id', Auth::user()->id)->get();
            //    dd($projects->count());
            $i=1;
            @endphp
            @if($Certification->count() > 0)
            <tr>
                <td>
                    <h4>Certifications</h4>
                </td>
            </tr>

            <tr>
                <td>
                    <table class="border-table">
                        <tr>
                            <th colspan="2">Certifications</th>
                        </tr>
                        @foreach ($Certification as $item)
                        <tr>
                            <td style="width:20%;"> <b>Certification In</b>  </td>
                            <td style="width:80%;">{{$item->Certification_name}}</td>
                        </tr>
                        @endforeach
                    </table>
                </td>
            </tr>
            @endif

           
            {{-- /*****************************
                    projects
            ************************************/ --}}
        
            
            @php
                $projects =  DB::table('academic_projects')->where('user_id', Auth::user()->id)->get();
            //    dd($projects->count());
            $i=1;
            @endphp
            @if($projects->count() > 0)
            <tr>
                <td>
                    <h4 >Projects</h4>
                </td>
            </tr>
            
            @foreach ($projects as $item)
                <tr>
                    <td>
                        <h4> Project {{$i++}} : </h4>
                    </td>
                </tr>
                <tr >
                    <td >
                        <p><b>Project Name </b> :  <span><b> {{$item->project_name}} </b> </span><span style="margin-left:25px;"> <b>Team Size</b> : <b >{{$item->team_size}} </b></span> </p>
                        <p style="margin-bottom: 15px"><b >Project Details </b> :  {{$item->project_detail}}</p>
                    </td>                   
                </tr>                
            @endforeach
            @endif
           
            
              {{-- /*****************************
                   Workshops / Seminars / Trainings
            ************************************/ --}}
           
           <tr>
               <td>
                   <h4>Workshops / Seminars / Trainings Attended</h4>
               </td>
           </tr>

           <tr>
               <td>
                   <p>{{$student_info->seminar_traning}}</p>
               </td>
           </tr>

             {{-- /*****************************
                   Skills Sets
            ************************************/ --}}

           

          {{-- /*****************************
                Extra-curricular Activities
            ************************************/ --}}

            <tr>
                <td>
                    <h4>Extra-curricular Activities</h4>
                </td>
            </tr>
            <tr>
                <td>
                    <p>{{$student_info->extracurricular}}</p>
                </td>
            </tr>


             {{-- /*****************************
               Hobbies
            ************************************/ --}}

            <tr>
                <td>
                    <h4>Hobbies</h4>
                </td>
            </tr>
            <tr>
                <td>
                    <p>{{$student_info->hobbies}}</p>
                </td>
            </tr>

            

              {{-- /*****************************
                    Personal Information
            ************************************/ --}}
            <tr>
                <td>
                    <table class="border-table">
                        <tr>
                            <th colspan="2">Personal Information</th>
                        </tr>
                        <tr>
                           <td> <b>Full Name</b> </td>
                           <td style="text-align: left; padding-left:20px;">{{$student_info->name}} {{$student_info->l_name}}</td>
                           
                        </tr>
                        <tr>
                            <td> <b>Mobile</b> </td>
                           <td style="text-align: left; padding-left:20px;">{{$student_info->phone}}</td>
                        </tr>
                       
                        <tr>
                            <td>
                                <b>Date of Birth</b>
                            </td>
                            <td style="text-align: left; padding-left:20px;">
                                {{-- $mytime = Carbon\Carbon::now()->format('d F Y');  --}}
                                {{ Carbon\Carbon::parse($student_info->dob)->format('d F Y')}}
                            </td>
                        </tr>
                        <tr>
                            <td> <b>Father’s Name</b></td>
                            <td style="text-align: left; padding-left:20px;">  {{$student_info->father_name}}</td>
                        </tr>
                        <tr>
                            <td>
                                <b>Gender</b>
                            </td>
                            <td style="text-align: left; padding-left:20px;">
                                @if($student_info->gender == '1')
                                Male 
                                @else
                                Female
                                @endif
                            </td>
                        </tr>
                        <tr>
                            <td>
                              <b>Language Known</b>  
                            </td>
                            <td style="text-align: left; padding-left:20px;">{{$student_info->known_language}}</td>
                        </tr>
                        <tr>
                            <td> <b>Address</b> </td>
                            <td  style="text-align: left; padding-left:20px;">{{$student_info->address}}</td>
                        </tr>
                    </table>  
                </td>
            </tr>

             {{-- /*****************************
                    Declaration 
            ************************************/ --}}
            <tr>
                <td> <h4>Declaration</h4> </td>
            </tr>
            <tr>
                <td>
                    <p>I hereby declare that the above furnished information is true to the best of my knowledge.</p>
                </td>
            </tr>
            @php
                $mytime = Carbon\Carbon::now()->format('d F Y'); 
            @endphp   
            <tr>
                <td>
                    <p> @php echo $mytime;  @endphp </p>
                </td>
            </tr>
             
            <tr>
                <td>
                    <p>Place: </p>
                </td>
            </tr>
            <tr>
                <td>
                    <br>
                    <p style="text-align: right">(  Name )</p>
                </td>
            </tr>
        </table>
    </div>
     

</body>
</html>