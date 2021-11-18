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
                   <p style="text-align: right; margin-right:25px;"> <span class="border-right: 2px solid #fff; padding-left:10px; margin-left:10px;"> {{$student_info->phone}}</span> <span>{{$student_info->email}} </span>  </p>   
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
                    <h4>Work Experience</h4>
                </td>
                <td>
                    <p></p>
                </td>
            </tr>

            <tr>
                <td>
                    <h4>Education</h4>
                </td>
            </tr>
            <tr>
               <td>
                    @if($student_info->education == 'PG')
                    <p><span>{{$student_info->cource_ug}}</span> <span><span> <b>{{$student_info->branch_ug}} </b></span></span><span>{{$student_info->year_of_pass_ug}}</span> <span> <b> {{$student_info->college_ug}} </b> </span> </p>
                    @php
                        $college_name = DB::table('colleges')->where('id', $student_info->collage_id)->pluck('college_name')->first();
                        $degree =   DB::table('courses')->where('id', $student_info->degree)->pluck('course_name')->first();
                        $branch_name =  DB::table('branches')->where('id', $student_info->branch_id)->pluck('branch_name')->first();
                    @endphp
                    <p> <span>{{$degree}}</span>   <span> <b>{{$branch_name}}</b> </span> <span>{{$student_info->year_of_pass_ug}}</span> <span> <b>{{$college_name}} </b></span>  </p>
                    @else
                    @php
                        $college_name = DB::table('colleges')->where('id', $student_info->collage_id)->pluck('college_name')->first();
                        $degree =   DB::table('courses')->where('id', $student_info->degree)->pluck('course_name')->first();
                        $branch_name =  DB::table('branches')->where('id', $student_info->branch_id)->pluck('branch_name')->first();
                    @endphp
                    <p> <span>{{$degree}}</span>   <span> <b>{{$branch_name}}</b> </span> <span>{{$student_info->year_of_pass_ug}}</span> <span> <b>{{$college_name}} </b></span>  </p>
                    @endif
                </td>
            </tr>
            <tr>
                <td>
                    <h4>Interships</h4>
                </td>
            </tr>
            @php
                   $intership=  DB::table('interships')->where('user_id', Auth::user()->id)->get();
                //    dd($$student_info->user_id);
                @endphp
                @foreach ($intership as $item)
                <tr>
                    <td>
                        <p> <span>{{$item->int_comp_name}}</span><span class="margin-right:25px;"><b>{{$item->intship_duration}} Months </b></span> <span class="margin-right:25px;"> <b>{{$item->your_roles}} </b></span> </p>
                    </td>
                </tr>
            @endforeach

        </table>
    </div>
     

</body>
</html>