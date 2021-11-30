<!DOCTYPE html>
<html>
<head>
	<title>Resume</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<link rel="shortcut icon" href="{{ asset('/1.png') }}">
	<style>
		body{
            margin: 0px;
            padding: 0px;
        }
       
        @page { margin:0px; padding: 0px; }
        .page-break {
                page-break-after: always;
            }

        .no-page-break{
            page-break-inside: avoid;
        }

            .page-break:last-child {
                page-break-after: avoid;
            }
        .header{
            background-color: #5b9bd5;
            color: #fff;
            padding-bottom: 10px;
            }
            p{
                margin-bottom: 0px;
                margin-top: 5px;
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
                background-color: #5b9bd5;
                color: #fff;
                padding-top: 10px;
                padding-bottom:10px;
            }
            .no_table{
                width: 100%;
                border: none;
                padding:15px 0px;
                border-collapse: collapse;
            }
            .no_table td, .no_table th{
                border: none;
                /* text-align: left; */
                padding: 0px;
                margin: 0px;
                vertical-align: top;
                line-height: 1.5rem;
            }
            .no_table th{
                padding-top: 0px;
                padding-bottom:0px;
                border: none;
            }
            .skill_ul li{
                list-style-type: square;
            }
	</style>
</head>
<body>

    <div class="header">
        <table style="width: 100%; border: none !important;">
            <tr style="width: 100%;">
                <td style="width: 100%;">
                    <h2 style="margin-left: 30px; margin-top:8px; margin-bottom:8px;">{{$student_info->name}}  {{$student_info->l_name}}
                    </h2>
                </td>
                <td style="width : 100%;">
                   <p style="text-align: right; margin-right:25px;"> <span style="border-right: 1px solid #fff; padding-right:10px; margin-right:10px;"> {{$student_info->phone}}</span> <span>{{$student_info->email}} </span>  </p>   
                   <p style="text-align: right; margin-right:25px;">{{$student_info->address}}</p>          
                </td>            
            </tr>
        </table>
    </div>

    <div class="content">
        <table style="width: 100%; border: none !important; padding:15px 25px;">
            <tr style="width: 100%;">
                <td style="width : 100%;">
                   <h4>Carrer Objective</h4>          
                </td>                            
            </tr>
            <tr>
                <td>
                    <p style="white-space:pre-wrap;">{!!$student_info->career_object!!}</p>
                </td>
            </tr>
            

            <tr>
                <td>
                    <h4>Education</h4>
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
          
          
             {{-- /*****************************
                    Intership 
            ************************************/ --}}


            @php
                $intership=  DB::table('interships')->where('user_id', Auth::user()->id)->get();
            //    dd($student_info->user_id);
            @endphp
            @if($intership->count() > 0)
            <tr>
                <td>
                    <h4 class="sub-heading"> <span class="bg-grey">Internships </span></h4>
                </td>
            </tr>
              
            <tr>
                <td>
                        @foreach ($intership as $item)
                        <table class="no_table">
                        <tr>
                            <th style="width:30%;"> <p>Company Name</p> </th>
                            <td  style="width:70%;"> <p>{{$item->int_comp_name}}</p> </td>
                        </tr>
                        <tr>
                            <th style="width:30%;"><p>Role</p></th>   
                            <td style="width:70%;"><p>{{$item->your_roles}}</p></td>                            
                        </tr> 
                        <tr>
                            <th style="width:30%;"  style="vertical-align: top;"><p>Description</p></th>   
                            <td style="width:70%;"><p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. nostrum deserunt voluptate?</p></td> 
                        </tr>
                        <tr>
                            <th style="width:30%;"> <p> Experience in Months</p></th>
                            <td style="width:70%;"><p>{{$item->intship_duration}}</p></td>
                        </tr>
                    </table>                         
                        @endforeach
                             
                </td>
            </tr>
            @endif

        </table>
      
        <table style="width: 100%; border: none !important; padding:15px 25px; page-break-before: always;">
            @php
                $projects =  DB::table('academic_projects')->where('user_id', Auth::user()->id)->get();
            //    dd($projects->count());
            $i=1;
            @endphp
            @if($projects->count() > 0)
            <tr>
                <td>
                    <h4 class="sub-heading"> <span class="bg-grey">Projects</span></h4>
                </td>
            </tr>
            <tr>
                <td>                  
                        @foreach ($projects as $item)
                        <table class="no_table"  >
                        <tr>
                            <td colspan="2" style="width:100%;">
                                <p> <b> Project {{$i++}} </b> </p>
                            </td>                  
                        </tr>
                        <tr>
                            <td style="width:30%;">
                               <p><b>Project Name </b>   </p>                           
                            </td>
                            <td style="width:70%;">
                            <p>{{$item->project_name}} </p> 
                                </td>                   
                        </tr>  
                        <tr>
                            <td style="width:30%;">
                                <p><b>Team Size</b></p>
                            </td> 
                            <td style="width:70%;">
                                <p>{{$item->team_size}}</p>
                            </td>
                        </tr>   
                        <tr>
                            <td style="width:30%;"  style="vertical-align: top; ">
                                <p><b>Project Details </b></p>
                            </td>
                            <td style="width:70%;">
                                <p >{{$item->project_detail}}</p>
                            </td>
                        </tr>   
                        </table>       
                         @endforeach  
                   
                </td>
            </tr>
            @endif
           
            </table>



    <table style="width: 100%; border: none !important; padding:15px 25px;">
           
           
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
                    <ul>
                        @foreach ($Certification as $item)
                        <li>
                            Certification In {{$item->Certification_name}}
                        </li>
                        @endforeach
                    </ul>
                </td>
            </tr>

           
            {{-- @foreach ($Certification as $item)
               
                <tr >
                    <td >
                        <p>Certification In :  <span><b> {{$item->Certification_name}} </b> </span></p>
                    </td>
                </tr>
            @endforeach --}}
            @endif

             {{-- /*****************************
                    Personal Information
            ************************************/ --}}

            
            <tr>
                <td>
                    <table>
                        <tr>
                            <td colspan="2" >
                                <h4 class="sub-heading" style="margin-bottom: 20px;"> <span class="bg-grey" >Personal Details</span></h4>
                            </td>
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
                <td>  <h4 class="sub-heading" style="margin-top: 40px;"> <span class="bg-grey">Declaration</span></h4> </td>
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
                    <p>Date: </p>
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
                    <p style="text-align: right; padding-right:30px;">(  Name )</p>
                </td>
            </tr>
               
        </table>
    </div>
     

</body>
</html>