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

                <div class="pt-32pt">
                    <div class="container page__container d-flex flex-column flex-md-row align-items-center text-center text-sm-left">
                        <div class="flex d-flex flex-column flex-sm-row align-items-center mb-24pt mb-md-0">

                            <div class="mb-24pt mb-sm-0 mr-sm-24pt">
                                <!--<h2 class="mb-0">Dashboard</h2>-->

                                <ol class="breadcrumb p-0 m-0">
                                    <li class="breadcrumb-item"><a href="index.html">Home</a></li>

                                    <li class="breadcrumb-item active">
                                        {{$page_title}}
                                        <!-- Dashboard{{$page_title}}  -->
                                       <!--  {{$Question->question_title}} -->

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
                </div>

                <!-- BEFORE Page Content -->

                <!-- // END BEFORE Page Content -->

                <!-- Page Content -->

    <div class="container page__container ml-0 pl-0">
        <div class="page-section">
            <div class="row bg-white p-3 shadow m-2">
                <form class="form-group row col-12" action="{{url('submit-test')}}" method="POST">
                    @csrf
                    <div class="col-12 m-auto pb-5">
                        @if($Question->question)
                        <label class="h4"><span class="h3 mr-2">Q.</span> {{$Question->question}}</label>
                        @else
                            <img src="{{url('question_image')}}" class="img-thumbnail">
                        @endif
                    </div>
                    <input type="hidden" name="question_id" value="{{$Question->id}}">
            <?php  $Q_option = DB::table('answers')->where('question_id',$Question->id)->get(); 

                foreach ($Q_option as  $value) 
                { ?>
                   <div class="col-md-6 h5">
                      <input type="radio"  name="option" value="{{$value->id}}">
                        <label>{{$value->answer}}</label><br>
                   </div>

               <?php }

            ?>
                <div class="col-md-10 text-center m-auto pt-3">
                    <button class="btn btn-info h3">Next</button>
                </div>
                </form>
            </div>

        </div>
    </div>

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

        <!-- // END Drawer Layout -->

        @include('Students.Common.student_footer')
        
        <script>
            $(document).ready(function()
            {
                $('.sidebar').hide();
            });
        </script>
        
    </body>

</html>