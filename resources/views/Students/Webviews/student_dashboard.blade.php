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
                                <h2 class="mb-0">Dashboard</h2>

                                <!-- <ol class="breadcrumb p-0 m-0">
                                    <li class="breadcrumb-item"><a href="JavaScript:Void(0);">Home</a></li>

                                    <li class="breadcrumb-item active">
                                        Dashboard
                                    </li>
                                </ol> -->

                            </div>
                        </div>

                        

                    </div>
                </div>

                <!-- BEFORE Page Content -->

                <!-- // END BEFORE Page Content -->

                <!-- Page Content -->

    <div class="container page__container">
        <div class="page-section">
            <div class="row">
             <!--  <div class="col-sm-6">
                <a href="{{url('studentdashboard')}}">
                    <div class="card text-center">
                      <div class="card-body text-center">
                        <span  class="h1 text-info"><i class="fa fa-th-large" aria-hidden="true"></i></span>
                        <p class="h3">Dashboard</p>
                        <hr class="style1 w-75 m-auto bg-info">                   
                      </div>
                    </div>
                </a>
              </div> -->


              <div class="col-md-6">
                @php 
                  $user = Auth::user();
                @endphp
                <div class="alert alert-success" role="alert">
                <h6> Welcome Back, <strong class="text-info ">@php echo $user->name; @endphp </strong>, how do you like to upskill today? </h6>  
                </div>
              </div>
              <div class="col-md-6 text-center mb-3">
                <img class="" src="{{asset('images/dashboard_scrore.png')}}" alt="">
              </div>
              
              <div class="col-sm-6">
                <a href="{{url('resume-page-one')}}">
                    <div class="card text-center">
                      <div class="card-body text-center">
                        <span  class="h1 text-primary"><i class="fa fa-graduation-cap" aria-hidden="true"></i></span>
                        <p class="h3 text-uppercase">Resume</p>
                        <hr class="style1 w-75 m-auto bg-primary">                   
                      </div>
                    </div>
                </a>
              </div>
              <div class="col-sm-6">
                <a href="{{url('E-Learn')}}">
                    <div class="card text-center">
                      <div class="card-body text-center">
                        <span  class="h1 text-danger"><i class="fa fa-play-circle" aria-hidden="true"></i></span>
                        <p class="h3">LEARNING VIDEOS & CONTENT</p>
                        <hr class="style1 w-75 m-auto bg-danger">                   
                      </div>
                    </div>
                </a>
              </div>
              <div class="col-sm-6">
                <a href="{{url('View-All-Test')}}">
                    <div class="card text-center">
                      <div class="card-body text-center">
                        <span  class="h1 text-success"><i class="fa fa-university" aria-hidden="true"></i></span>
                        <p class="h3 text-uppercase">TEST RESULTS & ANAYLYSIS</p>
                        <hr class="style1 w-75 m-auto bg-success">                   
                      </div>
                    </div>
                </a>
              </div>
              
              <div class="col-sm-6">
                <a href="{{url('View-All-Test')}}">
                    <div class="card text-center">
                      <div class="card-body text-center">
                        <span  class="h1 text-success"><i class="fa fa-university" aria-hidden="true"></i></span>
                        <p class="h3 text-uppercase">CLASS ROOM TRAINING </p>
                        <hr class="style1 w-75 m-auto bg-success">                   
                      </div>
                    </div>
                </a>
              </div>              
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
        
    </body>

</html>