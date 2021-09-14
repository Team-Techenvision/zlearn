<!DOCTYPE html>
<html lang="en"
      dir="ltr" >
      {{-- oncontextmenu="return false" --}}
    <head>
      @include('Students.Common.student_head')
      <meta name="csrf-token" content="{{ csrf_token() }}" />
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
      <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/timecircles/1.5.3/TimeCircles.css">
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
            <div class="col-12 mdk-drawer-layout__content page-content m-auto">
        
                <!-- Header -->
        
                <!-- Navbar -->
        
                @include('Students.Common.student_navbar')
        
                <!-- // END Navbar -->
        
                <!-- // END Header -->

                {{-- <div class="pt-32">
                    <div class="container page__container d-flex flex-column flex-md-row align-items-center text-center text-sm-left">
                        <div class="flex d-flex flex-column flex-sm-row align-items-center mb-24pt mb-md-0">

                            <div class="mb-24pt mb-sm-0 mr-sm-24pt">
                                <!--<h2 class="mb-0">Dashboard</h2>-->

                                <ol class="breadcrumb p-0 m-0">
                                    <li class="breadcrumb-item"><a href="index.html">Home</a></li>

                                    <li class="breadcrumb-item active">
                                        &nbsp;{{$Test_time->test_name}}
                                        {{-- <!-- Dashboard{{$page_title}}  --> --}}
                                       {{-- <!--  {{$Question->question_title}} --> - -}}

                                    </li>

                                </ol>

                            </div>
                        </div>

                        <!-- <div class="row"
                             role="tablist">
                            <div class="col-auto">
                                <a href="student-my-courses.html"
                                   class="btn btn-outline-secondary">My Courses</a>
                            </div>
                        </div> -->

                    </div>
                </div> --}}

                <!-- BEFORE Page Content -->

                <!-- // END BEFORE Page Content -->

                <!-- Page Content -->

    <div class="row" id="Q_paper" style="">
        <div class="row text-right col-12">                
            <div class="btn12 col-12 text-right m-auto">Submitted Count: <span id="p_submit_count">0 </span> <span>Time: &nbsp;</span><span class="block"></span></div>
        </div>        
    </div>
        <div class="row">                
            <div class=" col-12 ">
                <div class="row">
               
                    <div class="col-3">
                        {{-- <button type="button" class="btn btn-sm btn-primary" id="section_{{$row->section_id}}">{{$row->test_section_name}}</button> --}}
                        <select class="form-control col-md-8" name="section_name" id="section_id" disabled="true">                                     
                            @foreach($section as $r)                                     
                                <option value="{{$r->section_id}}" @if($r->section_id == Session::get('current_session'))selected @endif>{{$r->test_section_name}}</option> 
                            @endforeach                                 
                        </select>
                    </div>

                </div> 
            </div>
        </div>

        <div class="row">         
            <div class="page-section1 col-md-9 " >            
                <div class="row bg-white p-3 shadow m-2">
                    <!-- <div class="col-12 m-auto text-center">
                        <span class="border pagenation_row">{ { $Question->links() } }</span>
                    </div> -->
                     {{-- <div class="example stopwatch d-flex" data-timer="60"></div> --}}
                     
                    {{-- <form class="form-group row col-12" id="test_form" action="{{url('user-submit-test')}}" method="POST"> --}}
                        <form class="form-group row col-12" id="test_form" action="javascript:void(0)" method="POST">
                        @csrf

                        

                        {{-- @foreach ($Question as $question)                         --}}
                            
                        {{-- @php     $section_name= DB::table("test_section")->where("test_section.id",$question->test_section)->pluck('test_section_name')->first();
                                @endphp --}}
                        {{-- <div class="row col-3 ">
                            <span class="badge badge-primary w-100">{{$section_name}}</span>
                        </div> --}} 
                        <div class="col-12 m-auto" id="Q_div">
                            {{-- @if($question->question) --}}
                                <label  class="h5"><span class="h3 mr-2">Q.<span id="ques_no"></span></span><span id="question">  </span></label>
                            {{-- @endif
                            @if($question->question_image)
                                <img src="{{url($question->question_image)}}" class="img-thumbnail">
                            @endif --}}
                            <div class="col-12 m-auto" id="Que_img">
                                
                            </div>
                        </div>
                        <input type="hidden" name="test_id" id="test_id" value="{{$Test_time->id}}" >
                        <input type="hidden" name="question_id" id="question_id" value="">
                        <input type="hidden" name="current_section_id" id="current_section_id" value="{{ Session::get('current_session') }}">
                        <input type="hidden" value="" id="total_Q">
                    <!-- < ?php  $Q_option = DB::table('answers')->where('question_id',$question->id)->get(); 
                        $i=1;
                    foreach ($Q_option as  $value) 
                    { ?>
                       <div class="col-md-6 h5">
                          <input type="radio"  name="option" value="{ {$i++} }">
                            <label>{ {$value->answer} }</label><br>
                       </div>

                   < ?php }
                    //  dd($Question);
                    ?>-->
                     {{-- @endforeach  --}}
                     <div class="col-12 row" id="all_options">
                         
                     </div>
                   
                    <div class="col-md-10 text-center m-auto pt-3">
                        <button class="btn btn-info h3" id="submit_testQ">Next</button>
                    </div>
                    </form>
                </div>
            </div>
            <div class="col-md-3">
                <div class="col-md-10 m-auto pt-5" id="num_list">
                    

                    <div class="col-12 Q_pagenate">
                    {{-- < ?php $i=1; ?>
                    @foreach($count_Que as $list)
                    {{-- <span class="col-3 rounded rounded-circle bg-info p-4">{{$list->id}}</span> --}}
                    {{-- {{$list->id}} --}}
                    
                    {{-- <span data="{{$i}}" class="col-2 bg-primary text-white Quest_No mb-2">{{$i++}}</span> 
                    <span data="{{$i}}" class="col-2 @if(isset($list->Select_option)) bg-info @else bg-secondary @endif text-white Quest_No mb-2">{{$i++}}</span>
                    @endforeach--}}
                    </div> 
                    <div class="col-12 Test_caseIO">

                    </div> 
                </div>
                <div class="col-12">
                    <div class=" text-center pb-4" style="">
                        <button class="btn btn-outline-danger btn-lx submit_test_case" style="bottom: 25px;">Submit Programm</button> <br>
                        <span class="btn btn-outline-danger btn-lx" id="test_finish" style="">Finish Test </span>
                    </div>
                    
                </div>
            </div>
        </div>  
    </div>

    <!-- // END Page Content -->
{{-- ========================================== --}}
 

{{-- ======================================== --}}

                <!-- Footer -->

                {{-- <!-- @include('Students.Common.student_footertext') --> --}}

                <!-- // END Footer -->

            </div>

            <!-- // END drawer-layout__content -->

            <!-- Drawer left sidebar start -->

            @include('Students.Common.student_sidebar')

            <!-- // END Drawer sidebar ends -->

        </div>

        <!-- // END Drawer Layout -->

        @include('Students.Common.student_footer')
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/timecircles/1.5.3/TimeCircles.min.js"></script>
 
  <script src="{{asset('Student/vendor/timer.js')}}"></script> 
        <style>
            .pagenation_row ul li{
                border: 1px solid black;
                font-weight: bold;
            }
            .toast
            {
                position: absolute;
                right: 10px;
                top: 5px;
            }
            .btn12 {
                 padding: 0.25rem;
                 border: 0; 
                 border-radius: 3px; 
                 /* background-color: #4F46E5;  */
                 color: #212529; 
                 cursor:pointer; 
                 display: inline-block; 
                 font-size: 1.5rem; 
             }
             #num_lis1 a
             {                 
                  font-size: 110%;
             }
             .Quest_No
             {
                cursor: pointer;
             }
             .mdk-drawer__content , .mdk-drawer__scrim
             {
                display: none!important;
             }
             .page-section1
             {
                 width: 80vw;
             }
             .Q_pagenate 
             {
                padding-bottom: 25px;
             }

             .Test_caseIO
             {
                padding-bottom: 50px;
             }

             .avatar .logo-small , .dropdown-menu
             {
                 display:none!important;
             }

             @media screen and (max-width: 600px) 
             {
                #Q_paper
                {
                    padding-right: 0rem!important; 
                    padding-left: 0rem!important;
                }
                .page-section1
                {
                    width: 100vw;
                }
                .Q_pagenate
                {
                    padding-bottom: 75px;
                }
             }
        </style>
        <script>
            $(document).ready(function()
            {
                 $('.submit_test_case').hide();
                $('.sidebar, .alert').hide();
                $('#Q_div').css("padding-bottom","3rem");
                
                var current_section_id = $( "#current_section_id" ).val();
                // alert(current_section_id);
                
                // $("#section_id option:first").attr('selected','selected');
                $( "#section_id option:selected" ).val(current_section_id);
                
                //$("#section_id").change();
                ddl_section();
                
                $('#submit_testQ').click(function()
                {
                    $.ajax({
                        url: "{{url('user-submit-test')}}",
                        method: 'post',
                        data: $('#test_form').serialize(),
                        success: function(response)
                        { 
                            let current_Q = $('.pagination .active span').text();
                           current_Q = parseInt(current_Q);
                           //alert(current_Q + " "+ $('#total_Q').val() > current_Q);

                            if($('#total_Q').val() > current_Q)
                            {
                                current_Q = current_Q + 1;
                                //alert(current_Q);
                                fetch_data(current_Q);                                 
                                
                            }
                            else
                            {
                                //alert("else part");
                                
                                var T_section = $("#section_id option").length;
                                var selectedIndex = $("#section_id").prop("selectedIndex");

                                // alert(selectedIndex + " "+ T_section);
                                // alert((selectedIndex-1) > T_section);
                                selectedIndex = selectedIndex + 1;
                                if(selectedIndex < T_section)
                                {
                                    // alert("else part If");
                                    $("#section_id").prop("selectedIndex", selectedIndex).change();
                                    // localStorage.clear();
                                    localStorage.removeItem('section_minute');
                                    localStorage.removeItem('section_second');
                                }
                                else
                                {
                                   // alert("Test Completed !!");
                                    $(location).attr('href',"{{ url('Test-Result')}}");
                                }

                            }   
                        }
                    });
                });

                // ============================================================
                // $('.Quest_No').click(function()
                // {
                //     let cur_page = $(this).attr('data'); 
                //     let searchParams = new URLSearchParams(window.location.search);
                //     let url1 = "{{ url('Test')}}?page="+cur_page;
                //     //alert(url1);
                //     $(location).attr('href', url1);                               
                // });
                // ====================================================
                $('#test_finish').click(function()
                {
                   let key = confirm(" Are you sure Finish Test !!!!");

                   if(key == true)
                   {
                    $(location).attr('href',"{{ url('Test-Result')}}");
                   }
                });
                // ======================================
                $('#section_id').change(function()
                {
                    var timeMM = "";
                    var ddl_section = $(this).val();
                    //alert(timeMM);
                    //alert($(this).val());
                     
                    //    if(localStorage.getItem('timer_start_'))
                    //    {
                         
                        //localStorage.removeItem("timer_start_");
                         //sessionStorage.removeItem("timer_start_");
                        //window.clearTimeout();
                        //sessionStorage.removeItem("timer_start_");
                        //localStorage.clear();
                        //window.localStorage.removeItem("timer_start_");
                        
                    //    }
                    $.ajax({
                        method: "POST",
                        url: "{{url('QuestionOn-Section')}}",
                        dataType: 'json',
                        data: {
                            "_token": "{{ csrf_token() }}",
                            'section_id': $(this).val()
                        },
                    success: function(response,status)
                    {
                        // data = JSON.parse(response);
                         //alert(response['question']['total']);
                         console.log(response['question']);
                        if(response['question']['total']) 
                        {
                            $('#total_Q').val(response['question']['total']);
                            // console.log(response['links']);
                            if(response['question']['data']['0']['question'])
                            {
                                $('#question').html(response['question']['data']['0']['question']);
                            }
                            if(response['question']['data']['0']['question_image'])
                            {
                                $('#Que_img').html('<img src="'+ response['question']['data']['0']['question_image'] + '" class="img-thumbnail">');
                            }
                            $('#question_id').val(response['question']['data']['0']['id']);
                            $('.Q_pagenate').html(response['links']);
                            $('#ques_no').text($('.pagination .active span').text());
                            timeMM = response['question']['data']['0']['section_time'];
                            if($('#total_Q').val() == 1)
                            {
                                $('#ques_no').text($('#total_Q').val());
                            }
                            //section_time(timeMM);
                            //alert(timeMM);
                            // section_timer(timeMM);

                                // timer section wiese start 

                                var section_minute = parseInt(localStorage.getItem('section_minute'));
                                var section_second = parseInt(localStorage.getItem('section_second'));
                                //  alert(section_minute);
                                //     alert(section_second);
                                
                                if(isNaN(section_minute) || isNaN(section_second)){
                                    // localStorage.clear();
                                    localStorage.removeItem('section_minute');
                                    localStorage.removeItem('section_second');

                                    section_timer(timeMM, 0);
                                    // alert(section_minute);
                                }else{
                                if (Number.isNaN(section_minute) && section_minute == null && section_second == null) {
                                   
                                    section_timer(timeMM, 0);
                                   
                                }else{
                                    section_timer(section_minute, section_second);
                                  
                                }
                                }
                                // timer section wiese ends 

                            if(ddl_section != 7)
                            {
                               // alert(ddl_section);
                                Q_option();
                            }
                            else
                            {
                                compiler();
                            }
                        }
                        else
                        {
                            alert("This Section Question Not Available !!!");
                        }

                    }
                });
            });

            // =============================
            function compiler()
            {
                $('#Q_div').css("padding-bottom","1rem");
                $('#submit_testQ').hide();
                $('.submit_test_case').show();
                $('#all_options').html('<div class="col-md-12"><iframe frameBorder="0" height="450px" src="https://onecompiler.com/embed/python?codeChangeEvent=true" width="100%"></iframe><br></div>');                    
                $('.Test_caseIO').html("");
                $.ajax({
                    type: "POST",          
                    url: "{{ url('QTest-Case') }}",
                    dataType: "json",
                    data: {
                        "_token": "{{ csrf_token() }}",
                        'q_id': $('#question_id').val()                              
                        },
                    success : function(response)
                    { 
                        console.log(response);
                        localStorage.removeItem('p_submit_count');
                        var TC_len =  response['test_case'].length;
                        console.log(TC_len);
                        localStorage.setItem('test_case_count',TC_len);
                        var j = 1;
                        for(var i = 0;i < TC_len;i++)
                        {
                            $('.Test_caseIO').append('<span class="d-flex row"><div class="col-12"><div class="alert alert-success text-sucess_'+ j +'" role="alert" style="display:none;">Test Case Successfull</div><div class="alert alert-danger text-false_'+ j +'" role="alert" style="display:none;">Test False</div></div><span>Test Case '+ j +' :- </span></span><br/><span class="d-flex"><h5>Input :- '+ response['test_case'][i].input_test_case +'</h5></span><span class="d-flex"><h5>Output :- '+ response['test_case'][i].output_test_case +'</h5></span><h5>Program Output :- <span class="program_output_'+ j +'"></span></h5><br/><input type="hidden" name="test_case_input" class="test_case_input_'+ j +'" id="test_case_input_'+ j +'" value="'+ response['test_case'][i].input_test_case +'"><br/><input type="hidden" name="expected_output" class="expected_output_'+ j +'" id="expected_output_'+ j +'" value="'+ response['test_case'][i].output_test_case +'">');
                            j++;
                        }
                    }
                });

            }
            // ==============================

                function Q_option()
                {
                     $("div").remove(".option");
                     $('#submit_testQ').show();
                     $('.Test_caseIO').html(""); 
                    $.ajax({
                        type: "POST",          
                        url: "{{ url('question-option') }}",
                        dataType: "json",
                        data: {
                           "_token": "{{ csrf_token() }}",
                            'q_id': $('#question_id').val()                              
                          },
                        success : function(response)
                        { 
                          var len = 0;
                         // console.log(response);

                            // console.log(response['data'].length);
                             len = response['data'].length;
                             let j=1;
                             const fruits=[];
                             for(var i = 0;i < len;i++)
                            {
                                if (response['select_op']['Select_option'] == j) 
                                {
                                    fruits.push('<input type="radio" class="mr-2" name="option"value="'+ j +'" checked ><label>'+ response['data'][i].answer + '</label>');
                                }
                                else
                                {
                                    fruits.push('<input type="radio" class="mr-2" name="option"value="'+ j +'"  ><label>'+ response['data'][i].answer + '</label>');
                                }
                                // console.log('<div class="col-md-6 h5"><input type="radio" name="option"value="'i'"><label>'response['data'][i].answer'</label><br></div>');
                                //$('#all_options').append(response['data'][i].answer);
                                //console.log(response['select_op']['Select_option']);
                                // if (response['select_op']['Select_option'] == j) 
                                // {
                                //     $('#all_options').append('<div class="col-md-6 h5 option"><input type="radio" class="mr-2" name="option"value="'+ j +'" checked ><label>'+ response['data'][i].answer + '</label><br></div>');
                                // }
                                // else
                                // {
                                //    $('#all_options').append('<div class="col-md-6 h5 option"><input type="radio" class="mr-2" name="option"value="'+ j +'"><label>'+ response['data'][i].answer + '</label><br></div>');
                                //  }  

                                    j++;
                            }
                            // console.log("new Array = "+fruits.length);
                            // console.log("new Array = "+ fruits);
                                var test124 = randomArrayShuffle(fruits);
                                // console.log("Newlyy = "+ test124);
                             var demo = 0;
                             demo = test124.length;
                              let s=1;
                             for(var i = 0;i < demo;i++)
                            {

                                $('#all_options').append('<div class="col-md-6 h5 option">'+test124[i]+'<br></div>');
                                //  if (response['select_op']['Select_option'] == j) 
                                // {
                                //     $('#all_options').append('<div class="col-md-6 h5 option"><input type="radio" class="mr-2" name="option"value="'+ s +'" checked ><label>'+ response['data'][i].answer + '</label><br></div>');
                                // }
                                // else
                                // {
                                //    $('#all_options').append('<div class="col-md-6 h5 option"><input type="radio" class="mr-2" name="option"value="'+ s +'"><label>'+ response['data'][i].answer + '</label><br></div>');
                                //  }  

                                   s++;
                            }

                           

                       
                        }
                    });  
                }

               function randomArrayShuffle(array) 
               {
                  var currentIndex = array.length, temporaryValue, randomIndex;
                  while (0 !== currentIndex) 
                  {
                    randomIndex = Math.floor(Math.random() * currentIndex);
                    currentIndex -= 1;
                    temporaryValue = array[currentIndex];
                    array[currentIndex] = array[randomIndex];
                    array[randomIndex] = temporaryValue;
                  }
                  return array;
                }
// ===============================================================
                // function section_time(timeMM)
                // {
                //     //let hr = {{$Test_time->hours}};
                //     let hr = 0;
                //         // let min = {{$Test_time->minute}};
                //         let min =timeMM
                //     //let hr = 0;
                //     //let min = 50;
                //         set_timer($('.block'), [00, hr,min, 0],
                //             function(block) {
                //             block.html('<h1>time is over</h1>');
                //             window.clearTimeout();
                //             sessionStorage.removeItem("timer_start_");
                //                 $(location).attr('href',"{{ url('Test-Result')}}");
                //         });
                // }

                // ==========================================
        $(document).on('click', '.pagination a', function(event)
        {
            event.preventDefault(); 
            var page = $(this).attr('href').split('page=')[1];
            fetch_data(page);
        });
    
        function fetch_data(page)
        { 
            var section = $('#section_id').val();
            var ddl_section = $('#section_id').val();
             
        $.ajax({
            url:"/pagination/fetch_data/"+ section +"?page="+page,
            success:function(response)
            {
                console.log(response['question']);                       
                //console.log(response['links']);
                console.log("HHHHHH = "+ response['question']['data']['0']['question']);
                if(response['question']['data']['0']['question'])
                {
                    $('#question').html(response['question']['data']['0']['question']);
                }
                if(response['question']['data']['0']['question_image'])
                {
                    $('#Que_img').html('<img src="'+ response['question']['data']['0']['question_image'] + '" class="img-thumbnail">');
                }
                $('#question_id').val(response['question']['data']['0']['id']);
                $('.Q_pagenate').html(response['links']);
                $('#ques_no').text($('.pagination .active span').text());

                if(ddl_section != 7)
                {
                    // alert(ddl_section);
                    Q_option();
                }
                else
                {
                    compiler();
                }
            }
            });
        }
                // ============================================


                function ddl_section()
                { 
                    var timeMM ="";
                    var ddl_section = $('#section_id').val();
                   // alert(timeMM);
                     //clearInterval();
                    //    }
                    $.ajax({
                        method: "POST",
                        url: "{{url('QuestionOn-Section')}}",
                        dataType: 'json',
                        data: {
                            "_token": "{{ csrf_token() }}",
                            'section_id': $('#section_id').val()
                        },
                    success: function(response,status)
                    {
                        // data = JSON.parse(response);
                         //alert(response);
                         console.log(response['question']);
                            if(response['question']['total']) 
                            {
                                $('#total_Q').val(response['question']['total']);
                                // console.log(response['links']);
                                if(response['question']['data']['0']['question'])
                                {
                                    $('#question').html(response['question']['data']['0']['question']);
                                }
                                if(response['question']['data']['0']['question_image'])
                                {
                                    $('#Que_img').html('<img src="'+ response['question']['data']['0']['question_image'] + '" class="img-thumbnail">');
                                }
                                $('#question_id').val(response['question']['data']['0']['id']);
                                $('.Q_pagenate').html(response['links']);
                                $('#ques_no').text($('.pagination .active span').text());
                                timeMM = response['question']['data']['0']['section_time'];
                                if($('#total_Q').val() == 1)
                                {
                                    $('#ques_no').text($('#total_Q').val());
                                }
                                // alert(timeMM);
                                    // timer section wiese start 

                                var section_minute = parseInt(localStorage.getItem('section_minute'));
                                var section_second = parseInt(localStorage.getItem('section_second'));
                                //  alert(section_minute);
                                //     alert(section_second);
                                
                                if(isNaN(section_minute) || isNaN(section_second)){
                                    // localStorage.clear();
                                    localStorage.removeItem('section_minute');
                                    localStorage.removeItem('section_second');
                                    section_timer(timeMM, 0);
                                    // alert(section_minute);
                                }else{
                                if (Number.isNaN(section_minute) && section_minute == null && section_second == null) {
                                   
                                    section_timer(timeMM, 0);
                                   
                                }else{
                                    section_timer(section_minute, section_second);
                                }
                                }
                                
                                    // timer section wiese Ends 

                                if(ddl_section != 7)
                                {
                                    // alert(ddl_section);
                                    Q_option();
                                }
                                else
                                {
                                    compiler();
                                }
                            }
                            else
                            {
                                alert("This Section Question Not Available !!!");
                            }

                        }
                    });
                }
                // ==================================================

                function section_timer(section_minute, section_second)
                {
                    //alert(section_time);
                   
                    var timerInterval;
                    clearInterval(timerInterval);
                    let minutes = section_minute;
                    let seconds = section_second;
                    clearInterval(timerInterval);
                    let duration = (minutes * 60) + seconds;
                    let display = document.querySelector('.block');
                    startTimer(duration, display);

                }

                function startTimer(duration, display) 
                {                     
                     //alert(duration);
                    
                    var timer = duration, minutes, seconds;
                    clearTimeout(this.timerInterval);
                    timerInterval = setInterval(function() {
                        minutes = parseInt(timer / 60, 10);
                        seconds = parseInt(timer % 60, 10);

                        minutes = minutes < 10 ? "0" + minutes : minutes;
                        seconds = seconds < 10 ? "0" + seconds : seconds;

                        localStorage.section_minute = minutes;
                        localStorage.section_second = seconds;

                        display.textContent = minutes + ":" + seconds;

                        if (--timer < 0) {
                        timer = duration;
                        clearInterval(timerInterval);
                        section_ddl();
                        }
                    }, 1000);
                }
                // ==============================================
                function section_ddl()
                {
                    var T_section = $("#section_id option").length;
                    var selectedIndex = $("#section_id").prop("selectedIndex");

                    // alert(selectedIndex + " "+ T_section);
                    // alert((selectedIndex-1) > T_section);
                    selectedIndex = selectedIndex + 1;
                    if(selectedIndex < T_section)
                    {
                        // alert("else part If");
                        $("#section_id").prop("selectedIndex", selectedIndex).change();
                        // localStorage.clear();
                        localStorage.removeItem('section_minute');
                        localStorage.removeItem('section_second');
                    }
                    else
                    {
                         alert("Test Completed !!");
                        $(location).attr('href',"{{ url('Test-Result')}}");
                    }
                }
                // ==========================================
            });
        </script>
        <script>
            $(document).bind("contextmenu",function(e){
  return false;
    });
        </script>
        <!-- ======================================= -->
        

        <script>
            window.onmessage = function (e) 
            {
                if (e.data && e.data.language) 
                {
                    var test_case_count = localStorage.getItem('test_case_count');
                    for(let i = 1 ;i <= test_case_count; i++)
                        {
                    let test_case_input = $('#test_case_input_'+i).val();
                    (e.data.stdin = test_case_input);
                        }
                console.log(e.data) // store e.data on your database/ handle it
                // alert('hi');
                // var code = JSON.stringify(e.data);            
                const myJSON = JSON.stringify(e.data);  
                localStorage.setItem('compiler',myJSON);
                // localStorage.setItem('mycode',code);
                
                }
            };
            </script>
            
            
            <script>
            $(document).ready(function()
            {
               
                $(".alert-success").hide();
                $(".alert-danger").hide();
                let p = 0; 
                // $('.submit_programm').click(function(e){
             $(document).on('click', '.submit_test_case', function(e) {
                 
                 p = p+1;

                 localStorage.setItem('p_submit_count',p);
                 var p_submit_count1 = localStorage.getItem('p_submit_count');
                //  alert(p_submit_count);
                 $('#p_submit_count').html(p_submit_count1);


                var test_case_count = localStorage.getItem('test_case_count');
                
                // var compiler = localStorage.getItem('compiler');
                    // console.log(compiler);
                    var test_case_pass = 0;
                        for(let i = 1 ;i <= test_case_count; i++)
                        {
                           let expected_output = $('#expected_output_'+i).val();
                           let test_case_input = $('#test_case_input_'+i).val();
                           var compiler = localStorage.getItem('compiler');
                           var new_data = JSON.parse(compiler);
                           new_data.stdin = test_case_input;
                           var new_compiler = JSON.stringify(new_data);
                            // var expected_output = $(this).val();
                            console.log(test_case_count);
                            console.log(compiler);  
                            console.log(test_case_input);  
                            console.log(new_compiler);  
                
                        $.ajax({
                        url: "{{ url('save-student-program')}}",
                        method: 'post',
                        data: {
                        "_token": "{{ csrf_token() }}",
                        'programm' : new_compiler,
                        'input' : test_case_input
                        },
                        success: function(data)
                        {

                                console.log(data);
                                var result = JSON.parse(data);                        
                                console.log(result.stdout);
                                // console.log(expected_output);
                        
                                if(result.stdout == expected_output)
                                {
                                    $(".text-sucess_"+i).show();
                                    $(".text-false_"+i).hide();
                                    // save_result(expected_output);
                                    // alert(expected_output);
                                    $('.program_output_'+i).html(result.stdout);
                                    // alert(i);
                                    // alert("sucessfull");
                                    test_case_pass = test_case_pass+1;
                                    localStorage.setItem('test_case_pass',test_case_pass);
                                    // alert(test_case_pass);
                                    save_result();

                                }
                                else
                                {
                                    $(".text-sucess_"+i).hide();
                                    $(".text-false_"+i).show();
                                    // console.log(result.stdout);
                                    $('.program_output_'+i).html(result.stdout);
                                    // alert(expected_output);
                                    // alert(expected_output);
                                    // alert("Fail");
                                    if(test_case_pass == 0){
                                        test_case_pass = 0;               

                                    }else{
                                        test_case_pass = test_case_pass - 1;                                
                                    }
                                    localStorage.setItem('test_case_pass',test_case_pass);
                                    save_result();
                                }

                               
                        
                        }
                       
                        });
                        
                        
                }

                
                
                
                });

                function save_result()
                {
                var test_case_pass_update = localStorage.getItem('test_case_pass');
                                    var test_case_count = localStorage.getItem('test_case_count');
                                    var section = $('#section_id').val();
                                    // alert(test_case_pass_update);

                                    $.ajax({
                                    url: "{{ url('testCase-Result')}}",
                                    method: 'post',
                                    data: {
                                    "_token": "{{ csrf_token() }}",
                                    'test_case_pass' : test_case_pass_update,
                                    'test_case_count' : test_case_count,
                                    'section_id' : section,
                                    'q_id': $('#question_id').val()
                                    },
                                    success: function(response,status)
                                    {
                                        console.log(response);
                                        // console.log(response['data']['test_case']);
                                    }
                                });
                }
               
            });
            </script>

           
           
     
    </body>

</html>



 