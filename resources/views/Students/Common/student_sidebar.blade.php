<div class="mdk-drawer js-mdk-drawer"
                 id="default-drawer">
                <div class="mdk-drawer__content">
                    <div class="sidebar sidebar-dark-pickled-bluewood sidebar-left"
                         data-perfect-scrollbar>

                        <!-- Sidebar Content -->

                       

                        <a href="{{url('studentdashboard')}}"
                           class="sidebar-brand ">
                            <!-- <img class="sidebar-brand-icon" src="../../public/images/illustration/student/128/white.svg" alt="Luma"> -->

                            <span class="avatar avatar-xl sidebar-brand-icon h-auto rounded-circle">

                                <span class="avatar-title rounded bg-primary"><img src="{{asset('Student/images/illustration/student/128/white.svg')}}"
                                         class="img-fluid rounded-circle"
                                         alt="logo" /></span>
                            </span>

                            <span>@php 
                                $user = Auth::user();
                                echo $user->name;
                              @endphp
                              </span>
                        </a>

                        <div class="sidebar-heading">Student</div>
                        <ul class="sidebar-menu">

                            <li class="sidebar-menu-item">
                                <a class="sidebar-menu-button"
                                   href="{{url('studentdashboard')}}">
                                    {{-- <span class="material-icons sidebar-menu-icon sidebar-menu-icon--left">view_compact</span> --}}
                                    <i class="fa fa-th-large sidebar-menu-icon--left" aria-hidden="true"></i>
                                    <span class="sidebar-menu-text">Dashboard</span>
                                </a>
                            </li>
                            <li class="sidebar-menu-item">
                                <a class="sidebar-menu-button"
                                   href="{{url('resume-page-one')}}">
                                   <span class="material-icons sidebar-menu-icon sidebar-menu-icon--left">school</span>
                                    <span class="sidebar-menu-text">Resume</span>
                                </a>
                            </li>
                            {{-- <li class="sidebar-menu-item">
                                <a class="sidebar-menu-button"
                                   href="{{url('View-All-Test')}}">
                                   <span class="material-icons sidebar-menu-icon sidebar-menu-icon--left">message</span>
                                    <span class="sidebar-menu-text">Start Test</span>
                                </a>
                            </li> --}}
                             <li class="sidebar-menu-item">
                                <a class="sidebar-menu-button"
                                   data-toggle="collapse"
                                   href="#Test_List">
                                    <span class="material-icons sidebar-menu-icon sidebar-menu-icon--left">message</span>
                                    Start Test
                                    <!-- <span class="sidebar-menu-badge badge badge-accent badge-notifications ml-auto">2</span> -->
                                    <span class="sidebar-menu-toggle-icon"></span>
                                </a>
                                <ul class="sidebar-submenu collapse sm-indent"
                                    id="Test_List">
                                    <li class="sidebar-menu-item">
                                        <a class="sidebar-menu-button"
                                           href="{{url('View-All-Test')}}">
                                            <span class="sidebar-menu-text">Class Room</span>
                                        </a>
                                    </li>
                                    {{-- <li class="sidebar-menu-item">
                                        <a class="sidebar-menu-button"
                                           href="{{url('E-Learn')}}">
                                            <span class="sidebar-menu-text">e-Learn</span>
                                        </a>
                                    </li> --}}
                                </ul>
                            </li>
                            <li class="sidebar-menu-item">
                                <a class="sidebar-menu-button"
                                   href="{{url('learing_video')}}">
                                   <span class="material-icons sidebar-menu-icon sidebar-menu-icon--left">school</span>
                                    <span class="sidebar-menu-text">Learning Videos</span>
                                </a>
                            </li>
                        </ul>
                    
                        <!-- // END Sidebar Content -->

                    </div>
                </div>
            </div>