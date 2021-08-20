<!DOCTYPE html>
<html lang="en"
      dir="ltr">

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
            <div class="btn12 col-12 text-right m-auto"><span>Time: &nbsp;</span><span class="block"></span></div>
        </div>        
    </div>
        <div class="row">                
            <div class=" col-12 ">
                <div class="row">
               
                    <div class="col-3">
                        {{-- <button type="button" class="btn btn-sm btn-primary" id="section_{{$row->section_id}}">{{$row->test_section_name}}</button> --}}
                        <select class="form-control" name="section_name" id="section_id">                                     
                            @foreach($section as $r)                                     
                                <option value="{{$r->section_id}}">{{$r->test_section_name}}</option> 
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
                            <input type="hidden" value="{{count($count_Que)}}" id="total_Q">
                        {{-- @php     $section_name= DB::table("test_section")->where("test_section.id",$question->test_section)->pluck('test_section_name')->first();
                                @endphp --}}
                        {{-- <div class="row col-3 ">
                            <span class="badge badge-primary w-100">{{$section_name}}</span>
                        </div> --}}
                        <div class="col-12 m-auto pb-5">
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
                    {{-- <?php $i=1; ?>
                    @foreach($count_Que as $list)
                    {{-- <span class="col-3 rounded rounded-circle bg-info p-4">{{$list->id}}</span> --}}
                    {{-- {{$list->id}} --}}
                    
                    {{-- <span data="{{$i}}" class="col-2 bg-primary text-white Quest_No mb-2">{{$i++}}</span> 
                    <span data="{{$i}}" class="col-2 @if(isset($list->Select_option)) bg-info @else bg-secondary @endif text-white Quest_No mb-2">{{$i++}}</span>
                    @endforeach
                    </div> --}}
                </div>
                <div class="col-12">
                    <div class=" text-center pb-4" style="">
                        {{-- <a href="{{ url('Test-Result')}}" class="btn btn-outline-danger btn-lx" style="bottom: 25px;">Finish Test</a> --}}
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
                padding-bottom: 225px;
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
                $('.sidebar, .alert').hide();

                // $('.alert').hide();
                // $('#ques_no').text($('.pagination .active span').text());
                let searchParams = new URLSearchParams(window.location.search);
                //alert(searchParams.get('page'));
                let cur_page = searchParams.get('page');
                if(!cur_page)
                {
                    cur_page = 1;
                }
                cur_page = parseInt(cur_page);
                // $('#ques_no').text(cur_page);
                
                $('#submit_testQ').click(function()
                {
                    $.ajax({
                    url: "{{ url('user-submit-test')}}",
                    method: 'post',
                    data: $('#test_form').serialize(),
                    success: function(response)
                    {
                        // if(response)
                        // {
                        //     let searchParams = new URLSearchParams(window.location.search);
                        //     //alert(searchParams.get('page'));
                        //     let cur_page = searchParams.get('page');
                        //     if(!cur_page)
                        //     {
                        //         cur_page = 1;
                        //     }
                        //     //$('.alert-success').show();
                        //     //$('.alert_div').hide(2000);
                        //     cur_page = parseInt(cur_page);
                        //     if($('#total_Q').val() > cur_page)
                        //     {
                        //         cur_page = cur_page + 1;
                        //         let url1 = "{{ url('Test')}}?page="+cur_page;
                        //         //alert(url1);
                        //         $(location).attr('href', url1);
                        //     }
                        //     else
                        //     {
                        //         $(location).attr('href',"{{ url('Test-Result')}}");
                        //     }    
                        // }
                        // else
                        // {
                        //     //$('.alert-danger').show();
                        //    // $('.alert_div').hide(2000);
                        //     //alert("Not Submited !!!");
                        // }
                        //------------------------
                            // $('#send_form').html('Submit');
                            // $('#res_message').show();
                            // $('#res_message').html(response.msg);
                            // $('#msg_div').removeClass('d-none');

                            // document.getElementById("contact_us").reset(); 
                            // setTimeout(function()
                            // {
                            //     $('#res_message').hide();
                            //     $('#msg_div').hide();
                            // },10000);
                        //--------------------------
                    }});
                });
            });
        </script>
        <!-- ======================================= -->
        <script>
            $(document).ready(function()
            {

                $('.Quest_No').click(function()
                {
                    let cur_page = $(this).attr('data'); 
                    let searchParams = new URLSearchParams(window.location.search);
                    let url1 = "{{ url('Test')}}?page="+cur_page;
                    //alert(url1);
                    $(location).attr('href', url1);                               
                });

                $('#test_finish').click(function()
                {
                   let key = confirm(" Are you sure Finish Test !!!!");

                   if(key == true)
                   {
                    $(location).attr('href',"{{ url('Test-Result')}}");
                   }
                });
                 
            });
        </script>
        <!-- ============================================= -->
        {{-- <script>
    $(document).ready(function()
    {  
     // $("#count-down").TimeCircles();
		//$("#count-down").TimeCircles().end().fadeOut();	
		
        $(".example.stopwatch").TimeCircles();
 
    });
</script> --}}

{{-- <script>
    let hr = {{$Test_time->hours}};
    let min = {{$Test_time->minute}};
   //let hr = 0;
   //let min = 50;
    set_timer($('.block'), [00, hr,min, 0],
         function(block) {
           block.html('<h1>time is over</h1>');
           window.clearTimeout();
           sessionStorage.removeItem("timer_start_");
            $(location).attr('href',"{{ url('Test-Result')}}");
       });
   </script>  --}}



            {{-- dhananjay code  --}}

            <!-- <script>
                myElement.find('option:eq(0)').prop('selected', true);
            </script>
            <script>
                $(document).ready(function(){
                $(document).on("click","button",function(){
                    alert(this.id);
                    // alert("I am (this.id) and automatically clicked");
                });
                });
            </script> -->

            <!-- <script>
                window.onload=function(){
                    $("#section_1").click();
                    }
            </script> -->

            {{-- dhananjay code  --}}

        <script>
            $(document).ready(function()
            {
                $('#section_id').change(function()
                {
                   // alert($(this).val());
                //    if(localStorage.getItem('timer_start_'))
                //    {
                         
                        //localStorage.removeItem("timer_start_");
                         //sessionStorage.removeItem("timer_start_");
                        //window.clearTimeout();
                        //sessionStorage.removeItem("timer_start_");
                        //localStorage.clear();
                        //window.localStorage.removeItem("timer_start_");
                       clearInterval();
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
                        // alert(response['response'])
                        console.log(response['question']);
                        console.log(response['links']);
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
                         let timeMM = response['question']['data']['0']['section_time'];
                         
                         section_time(timeMM);
                        Q_option();

                    }
                });
            });

                function Q_option()
                {
                     $("div").remove(".option");

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
                          console.log(response);

                             console.log(response['data'].length);
                             len = response['data'].length;
                             let j=1;
                             for(var i = 0;i < len;i++)
                            {
                                // console.log('<div class="col-md-6 h5"><input type="radio" name="option"value="'i'"><label>'response['data'][i].answer'</label><br></div>');
                                //$('#all_options').append(response['data'][i].answer);
                                //console.log(response['select_op']['Select_option']);
                                if (response['select_op']['Select_option'] == j) 
                                {
                                    $('#all_options').append('<div class="col-md-6 h5 option"><input type="radio" class="mr-2" name="option"value="'+ j +'" checked ><label>'+ response['data'][i].answer + '</label><br></div>');
                                }
                                else
                                {
                                   $('#all_options').append('<div class="col-md-6 h5 option"><input type="radio" class="mr-2" name="option"value="'+ j +'"><label>'+ response['data'][i].answer + '</label><br></div>');
                                 }  

                                   j++;
                            }
                       
                        }
                    });  
                }

                function section_time(timeMM)
                {
                    //let hr = {{$Test_time->hours}};
                    let hr = 0;
                        // let min = {{$Test_time->minute}};
                        let min =timeMM
                    //let hr = 0;
                    //let min = 50;
                        set_timer($('.block'), [00, hr,min, 0],
                            function(block) {
                            block.html('<h1>time is over</h1>');
                            window.clearTimeout();
                            sessionStorage.removeItem("timer_start_");
                                $(location).attr('href',"{{ url('Test-Result')}}");
                        });
                }

            });    
        </script>

<script>
    $(document).ready(function(){
     $(document).on('click', '.pagination a', function(event){
      event.preventDefault(); 
      var page = $(this).attr('href').split('page=')[1];
      fetch_data(page);
     });
    
     function fetch_data(page)
     {
        

      $.ajax({
       url:"/pagination/fetch_data?page="+page,
       success:function(response)
       {
                        console.log(response['question']);
                        console.log(response['links']);
                        $('#question').html(response['question']['data']['0']['question']);
                        $('#question_id').val(response['question']['data']['0']['id']);
                        $('.Q_pagenate').html(response['links']);
                         $('#ques_no').text($('.pagination .active span').text());
                         Q_option();
       }
      });

       function Q_option()
                {
                     $("div").remove(".option");
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
                          console.log(response);

                             console.log(response['data'].length);
                             len = response['data'].length;
                             let j =1;
                             for(var i = 0;i < len;i++)
                            {
                                // console.log('<div class="col-md-6 h5"><input type="radio" name="option"value="'i'"><label>'response['data'][i].answer'</label><br></div>');
                               //$('#all_options').append(response['data'][i].answer);
                                   if (response['select_op']['Select_option'] == j) 
                                {
                                    $('#all_options').append('<div class="col-md-6 h5 option"><input type="radio" class="mr-2" name="option"value="'+ j +'" checked ><label>'+ response['data'][i].answer + '</label><br></div>');
                                }
                                else
                                {
                                   $('#all_options').append('<div class="col-md-6 h5 option"><input type="radio" class="mr-2" name="option"value="'+ j +'"><label>'+ response['data'][i].answer + '</label><br></div>');
                                 } 
                                   j++;
                            }
                       
                        }
                    });  
                }
     }
     
    });
    </script>

    <script type="text/javascript">
        $(document).ready(function()
        {
           $('#question_id').val(); 
        });
    </script>
    </body>

</html>

 