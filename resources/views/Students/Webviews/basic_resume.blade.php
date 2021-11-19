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
        .header{
            background-color: #5b9bd5;
            color: #fff;
            padding-bottom: 10px;
            }
            p{
                margin-bottom: 0px;
                margin-top: 5px;
            }
            h4{
                margin-top: 10px;
                margin-bottom: 10px;
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
                   <h4>Carrer Objectives</h4>          
                </td>                            
            </tr>
            <tr>
                <td>
                    <p >{{$student_info->career_object}}</p>
                </td>
            </tr>
            <tr>
                <td>
                    <h4>Personal Attributes : Skills Sets</h4>
                </td>
            </tr>
            <tr>
                <td>
                    <p>{{$student_info->skil_sets}}</p>
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
                    {{-- <p> <span>{{$degree}}</span>   <span> <b>{{$branch_name}}</b> </span> <span>{{$student_info->year_of_pass_ug}}</span> <span> <b>{{$college_name}} </b></span>  </p> --}}
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
                    {{-- <p> <span>{{$degree}}</span>   <span> <b>{{$branch_name}}</b> </span> <span>{{$student_info->year_of_pass_ug}}</span> <span> <b>{{$college_name}} </b></span>  </p> --}}
                    <tr>
                        <td>{{$degree}}</td>
                        <td>{{$branch_name}}</td>
                        <td>{{$student_info->year_of_pass_ug}}</td>
                        <td>{{$college_name}}</td>                      
                    </tr>
                    @endif
                </table>
                    
                    
                </td>
            </tr>
          
          
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
                        {{-- <p> <span>{{$item->int_comp_name}}</span><span><b  style="margin-left:25px; padding-left:15px;">{{$item->intship_duration}} Months </b></span> <span style="margin-left:25px;"> <b>{{$item->your_roles}} </b></span> </p> --}}
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
                    <h4>Projects</h4>
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
                    <table class="border-table">
                        <tr>
                            <th colspan="4">Personal Information</th>
                        </tr>
                        <tr>
                           <td> <b>Full Name</b> </td>
                           <td>{{$student_info->name}} {{$student_info->l_name}}</td>
                           <td> <b>Mobile</b> </td>
                           <td>{{$student_info->phone}}</td>
                        </tr>
                        <tr>
                            <td> <b>Address</b> </td>
                            <td colspan="3">{{$student_info->address}}</td>
                        </tr>
                    </table>  
                </td>
            </tr>         
        </table>
    </div>
     

</body>
</html>