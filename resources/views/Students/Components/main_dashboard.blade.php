<body class="layout-app ">


            <!-- BEFORE Page Content -->

            <!-- // END BEFORE Page Content -->

            <!-- Page Content -->

            <div class="container page__container">
                <div class="page-section">

                    <div class="page-separator">
                        <div class="page-separator__text">Overview</div>
                    </div>

                    <div class="row mb-lg-8pt">
                        <div class="col-lg-6">

                            <div class="card">
                                <div class="card-header d-flex align-items-center">
                                    <div class="h2 mb-0 mr-3">116</div>
                                    <div class="flex">
                                        <p class="card-title">Angular</p>
                                        <p class="card-subtitle text-50">Best score</p>
                                    </div>
                                    <div class="dropdown">
                                        <a href="#"
                                           class="btn btn-sm btn-outline-secondary dropdown-toggle"
                                           data-toggle="dropdown">Popular Topics</a>
                                        <div class="dropdown-menu dropdown-menu-right">
                                            <a href=""
                                               class="dropdown-item">Popular Topics</a>
                                            <a href=""
                                               class="dropdown-item">Web Design</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-body p-24pt">
                                    <div class="chart"
                                         style="height: 344px;">
                                        <canvas id="topicIqChart"
                                                class="chart-canvas js-update-chart-line"
                                                data-chart-hide-axes="true"
                                                data-chart-points="true"
                                                data-chart-suffix=" points"
                                                data-chart-line-border-color="primary"></canvas>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="col-lg-6">

                            <div class="card">
                                <div class="card-header d-flex align-items-center border-0">
                                    <div class="h2 mb-0 mr-3">432</div>
                                    <div class="flex">
                                        <p class="card-title">Experience IQ</p>
                                        <p class="card-subtitle text-50">4 days streak this week</p>
                                    </div>
                                    <i class="material-icons text-muted ml-2">trending_up</i>
                                </div>
                                <div class="card-body pt-0">
                                    <div class="chart"
                                         style="height: 128px;">
                                        <canvas id="iqChart"
                                                class="chart-canvas js-update-chart-line"
                                                data-chart-hide-axes="false"
                                                data-chart-points="true"
                                                data-chart-suffix="pt"
                                                data-chart-line-border-color="primary"></canvas>
                                    </div>
                                </div>
                            </div>

                            <div id="carouselExampleFade"
                                 class="carousel carousel-card slide mb-24pt">
                                <div class="carousel-inner">

                                    <div class="carousel-item active">

                                        <a class="card border-0 mb-0"
                                           href="">
                                            <img src ="{{asset('Student/images/achievements/flinto.png')}}"
                                                 alt="Flinto"
                                                 class="card-img"
                                                 style="max-height: 100%; width: initial;">
                                            <div class="fullbleed bg-primary"
                                                 style="opacity: .5;"></div>
                                            <span class="card-body d-flex flex-column align-items-center justify-content-center fullbleed">
                                                <span class="row flex-nowrap">
                                                    <span class="col-auto text-center d-flex flex-column justify-content-center align-items-center">
                                                        <span class="h5 text-white text-uppercase font-weight-normal m-0 d-block">Achievement</span>
                                                        <span class="text-white-60 d-block mb-24pt">Jun 5, 2018</span>
                                                    </span>
                                                    <span class="col d-flex flex-column">
                                                        <span class="text-right flex mb-16pt">
                                                            <img src ="{{asset('Student/images/paths/flinto_40x40@2x.png')}}"
                                                                 width="64"
                                                                 alt="Flinto"
                                                                 class="rounded">
                                                        </span>
                                                    </span>
                                                </span>
                                                <span class="row flex-nowrap">
                                                    <span class="col-auto text-center d-flex flex-column justify-content-center align-items-center">
                                                        <img src ="{{asset('Student/images/illustration/achievement/128/white.svg')}}"
                                                             width="64"
                                                             alt="achievement">
                                                    </span>
                                                    <span class="col d-flex flex-column">
                                                        <span>
                                                            <span class="card-title text-white mb-4pt d-block">Flinto</span>
                                                            <span class="text-white-60">Introduction to The App Design Application</span>
                                                        </span>
                                                    </span>
                                                </span>
                                            </span>
                                        </a>

                                    </div>

                                    <div class="carousel-item">

                                        <a class="card border-0 mb-0"
                                           href="">
                                            <img src ="{{asset('Student/images/achievements/angular.png')}}"
                                                 alt="Angular fundamentals"
                                                 class="card-img"
                                                 style="max-height: 100%; width: initial;">
                                            <div class="fullbleed bg-primary"
                                                 style="opacity: .5;"></div>
                                            <span class="card-body d-flex flex-column align-items-center justify-content-center fullbleed">
                                                <span class="row flex-nowrap">
                                                    <span class="col-auto text-center d-flex flex-column justify-content-center align-items-center">
                                                        <span class="h5 text-white text-uppercase font-weight-normal m-0 d-block">Achievement</span>
                                                        <span class="text-white-60 d-block mb-24pt">Jun 5, 2018</span>
                                                    </span>
                                                    <span class="col d-flex flex-column">
                                                        <span class="text-right flex mb-16pt">
                                                            <img src ="{{asset('Student/images/paths/angular_64x64.png')}}"
                                                                 width="64"
                                                                 alt="Angular fundamentals"
                                                                 class="rounded">
                                                        </span>
                                                    </span>
                                                </span>
                                                <span class="row flex-nowrap">
                                                    <span class="col-auto text-center d-flex flex-column justify-content-center align-items-center">
                                                        <img src ="{{asset('Student/images/illustration/achievement/128/white.svg')}}"
                                                             width="64"
                                                             alt="achievement">
                                                    </span>
                                                    <span class="col d-flex flex-column">
                                                        <span>
                                                            <span class="card-title text-white mb-4pt d-block">Angular fundamentals</span>
                                                            <span class="text-white-60">Creating and Communicating Between Angular Components</span>
                                                        </span>
                                                    </span>
                                                </span>
                                            </span>
                                        </a>

                                    </div>

                                </div>
                                <!-- <a class="carousel-control-prev" href="#carouselExampleFade" role="button" data-slide="prev">
<span class="carousel-control-icon material-icons" aria-hidden="true">keyboard_arrow_left</span>
<span class="sr-only">Previous</span>
</a> -->
                                <a class="carousel-control-next"
                                   href="#carouselExampleFade"
                                   role="button"
                                   data-slide="next">
                                    <span class="carousel-control-icon material-icons"
                                          aria-hidden="true">keyboard_arrow_right</span>
                                    <span class="sr-only">Next</span>
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="row mb-lg-16pt">
                        <div class="col-lg-6 mb-8pt mb-sm-0">
                            <div class="page-separator">
                                <div class="page-separator__text">Learning Paths</div>
                            </div>

                            <div class="card js-overlay card-sm overlay--primary-dodger-blue stack stack--1 mb-16pt"
                                 data-toggle="popover"
                                 data-trigger="click">

                                <div class="card-body d-flex flex-column">
                                    <div class="d-flex align-items-center">
                                        <div class="flex">
                                            <div class="d-flex align-items-center">
                                                <div class="rounded mr-12pt z-0 o-hidden">
                                                    <div class="overlay">
                                                        <img src ="{{asset('Student/images/paths/angular_40x40@2x.png')}}"
                                                             width="40"
                                                             height="40"
                                                             alt="Angular"
                                                             class="rounded">
                                                        <span class="overlay__content overlay__content-transparent">
                                                            <span class="overlay__action d-flex flex-column text-center lh-1">
                                                                <small class="h6 small text-white mb-0"
                                                                       style="font-weight: 500;">80%</small>
                                                            </span>
                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="flex">
                                                    <div class="card-title">Angular</div>
                                                    <p class="flex text-50 lh-1 mb-0"><small>18 courses</small></p>
                                                </div>
                                            </div>
                                        </div>

                                        <a href="student-path.html"
                                           class="ml-4pt btn btn-sm btn-link text-secondary">Resume</a>

                                    </div>

                                </div>
                            </div>

                            <div class="popoverContainer d-none">
                                <div class="media">
                                    <div class="media-left mr-12pt">
                                        <img src ="{{asset('Student/images/paths/angular_40x40@2x.png')}}"
                                             width="40"
                                             height="40"
                                             alt="Angular"
                                             class="rounded">
                                    </div>
                                    <div class="media-body">
                                        <div class="card-title">Angular</div>
                                        <p class="text-50 d-flex lh-1 mb-0 small">18 courses</p>
                                    </div>
                                </div>

                                <p class="mt-16pt text-70">Learn the fundamentals of working with Angular and how to create basic applications.</p>

                                <div class="my-32pt">
                                    <div class="d-flex align-items-center mb-8pt justify-content-center">
                                        <div class="d-flex align-items-center mr-8pt">
                                            <span class="material-icons icon-16pt text-50 mr-4pt">access_time</span>
                                            <p class="flex text-50 lh-1 mb-0"><small>50 minutes left</small></p>
                                        </div>
                                        <div class="d-flex align-items-center">
                                            <span class="material-icons icon-16pt text-50 mr-4pt">play_circle_outline</span>
                                            <p class="flex text-50 lh-1 mb-0"><small>12 lessons</small></p>
                                        </div>
                                    </div>
                                    <div class="d-flex align-items-center justify-content-center">
                                        <a href="student-path.html"
                                           class="btn btn-primary mr-8pt">Resume</a>
                                        <a href="student-path.html"
                                           class="btn btn-outline-secondary ml-0">Start over</a>
                                    </div>
                                </div>

                                <div class="d-flex align-items-center">
                                    <small class="text-50 mr-8pt">Your rating</small>
                                    <div class="rating mr-8pt">
                                        <span class="rating__item"><span class="material-icons text-primary">star</span></span>
                                        <span class="rating__item"><span class="material-icons text-primary">star</span></span>
                                        <span class="rating__item"><span class="material-icons text-primary">star</span></span>
                                        <span class="rating__item"><span class="material-icons text-primary">star</span></span>
                                        <span class="rating__item"><span class="material-icons text-primary">star_border</span></span>
                                    </div>
                                    <small class="text-50">4/5</small>
                                </div>
                            </div>

                            <div class="card js-overlay card-sm overlay--primary-dodger-blue stack stack--1 mb-16pt"
                                 data-toggle="popover"
                                 data-trigger="click">

                                <div class="card-body d-flex flex-column">
                                    <div class="d-flex align-items-center">
                                        <div class="flex">
                                            <div class="d-flex align-items-center">
                                                <div class="rounded mr-12pt z-0 o-hidden">
                                                    <div class="overlay">
                                                        <img src ="{{asset('Student/images/paths/swift_40x40@2x.png')}}"
                                                             width="40"
                                                             height="40"
                                                             alt="Angular"
                                                             class="rounded">
                                                        <span class="overlay__content overlay__content-transparent">
                                                            <span class="overlay__action d-flex flex-column text-center lh-1">
                                                                <small class="h6 small text-white mb-0"
                                                                       style="font-weight: 500;">80%</small>
                                                            </span>
                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="flex">
                                                    <div class="card-title">Swift</div>
                                                    <p class="flex text-50 lh-1 mb-0"><small>18 courses</small></p>
                                                </div>
                                            </div>
                                        </div>

                                        <a href="student-path.html"
                                           class="ml-4pt btn btn-sm btn-link text-secondary border-1 border-secondary">Resume</a>

                                    </div>

                                </div>
                            </div>

                            <div class="popoverContainer d-none">
                                <div class="media">
                                    <div class="media-left mr-12pt">
                                        <img src ="{{asset('Student/images/paths/swift_40x40@2x.png')}}"
                                             width="40"
                                             height="40"
                                             alt="Angular"
                                             class="rounded">
                                    </div>
                                    <div class="media-body">
                                        <div class="card-title">Swift</div>
                                        <p class="text-50 d-flex lh-1 mb-0 small">18 courses</p>
                                    </div>
                                </div>

                                <p class="mt-16pt text-70">Learn the fundamentals of working with Swift and how to create basic applications.</p>

                                <div class="my-32pt">
                                    <div class="d-flex align-items-center mb-8pt justify-content-center">
                                        <div class="d-flex align-items-center mr-8pt">
                                            <span class="material-icons icon-16pt text-50 mr-4pt">access_time</span>
                                            <p class="flex text-50 lh-1 mb-0"><small>50 minutes left</small></p>
                                        </div>
                                        <div class="d-flex align-items-center">
                                            <span class="material-icons icon-16pt text-50 mr-4pt">play_circle_outline</span>
                                            <p class="flex text-50 lh-1 mb-0"><small>12 lessons</small></p>
                                        </div>
                                    </div>
                                    <div class="d-flex align-items-center justify-content-center">
                                        <a href="student-path.html"
                                           class="btn btn-primary mr-8pt">Resume</a>
                                        <a href="student-path.html"
                                           class="btn btn-outline-secondary ml-0">Start over</a>
                                    </div>
                                </div>

                                <div class="d-flex align-items-center">
                                    <small class="text-50 mr-8pt">Your rating</small>
                                    <div class="rating mr-8pt">
                                        <span class="rating__item"><span class="material-icons text-primary">star</span></span>
                                        <span class="rating__item"><span class="material-icons text-primary">star</span></span>
                                        <span class="rating__item"><span class="material-icons text-primary">star</span></span>
                                        <span class="rating__item"><span class="material-icons text-primary">star</span></span>
                                        <span class="rating__item"><span class="material-icons text-primary">star_border</span></span>
                                    </div>
                                    <small class="text-50">4/5</small>
                                </div>
                            </div>

                            <div class="card js-overlay card-sm overlay--primary-dodger-blue stack stack--1 mb-16pt"
                                 data-toggle="popover"
                                 data-trigger="click">

                                <div class="card-body d-flex flex-column">
                                    <div class="d-flex align-items-center">
                                        <div class="flex">
                                            <div class="d-flex align-items-center">
                                                <div class="rounded mr-12pt z-0 o-hidden">
                                                    <div class="overlay">
                                                        <img src ="{{asset('Student/images/paths/react_40x40@2x.png')}}"
                                                             width="40"
                                                             height="40"
                                                             alt="Angular"
                                                             class="rounded">
                                                        <span class="overlay__content overlay__content-transparent">
                                                            <span class="overlay__action d-flex flex-column text-center lh-1">
                                                                <small class="h6 small text-white mb-0"
                                                                       style="font-weight: 500;">80%</small>
                                                            </span>
                                                        </span>
                                                    </div>
                                                </div>
                                                <div class="flex">
                                                    <div class="card-title">React Native</div>
                                                    <p class="flex text-50 lh-1 mb-0"><small>18 courses</small></p>
                                                </div>
                                            </div>
                                        </div>

                                        <a href="student-path.html"
                                           class="ml-4pt btn btn-sm btn-link text-secondary">Resume</a>

                                    </div>

                                </div>
                            </div>

                            <div class="popoverContainer d-none">
                                <div class="media">
                                    <div class="media-left mr-12pt">
                                        <img src ="{{asset('Student/images/paths/react_40x40@2x.png')}}"
                                             width="40"
                                             height="40"
                                             alt="Angular"
                                             class="rounded">
                                    </div>
                                    <div class="media-body">
                                        <div class="card-title">React Native</div>
                                        <p class="text-50 d-flex lh-1 mb-0 small">18 courses</p>
                                    </div>
                                </div>

                                <p class="mt-16pt text-70">Learn the fundamentals of working with React Native and how to create basic applications.</p>

                                <div class="my-32pt">
                                    <div class="d-flex align-items-center mb-8pt justify-content-center">
                                        <div class="d-flex align-items-center mr-8pt">
                                            <span class="material-icons icon-16pt text-50 mr-4pt">access_time</span>
                                            <p class="flex text-50 lh-1 mb-0"><small>50 minutes left</small></p>
                                        </div>
                                        <div class="d-flex align-items-center">
                                            <span class="material-icons icon-16pt text-50 mr-4pt">play_circle_outline</span>
                                            <p class="flex text-50 lh-1 mb-0"><small>12 lessons</small></p>
                                        </div>
                                    </div>
                                    <div class="d-flex align-items-center justify-content-center">
                                        <a href="student-path.html"
                                           class="btn btn-primary mr-8pt">Resume</a>
                                        <a href="student-path.html"
                                           class="btn btn-outline-secondary ml-0">Start over</a>
                                    </div>
                                </div>

                                <div class="d-flex align-items-center">
                                    <small class="text-50 mr-8pt">Your rating</small>
                                    <div class="rating mr-8pt">
                                        <span class="rating__item"><span class="material-icons text-primary">star</span></span>
                                        <span class="rating__item"><span class="material-icons text-primary">star</span></span>
                                        <span class="rating__item"><span class="material-icons text-primary">star</span></span>
                                        <span class="rating__item"><span class="material-icons text-primary">star</span></span>
                                        <span class="rating__item"><span class="material-icons text-primary">star_border</span></span>
                                    </div>
                                    <small class="text-50">4/5</small>
                                </div>
                            </div>

                        </div>
                        <div class="col-lg-6">

                            <div class="page-separator">
                                <div class="page-separator__text">Courses</div>
                            </div>

                            <div class="position-relative carousel-card">
                                <div class="js-mdk-carousel row d-block"
                                     id="carousel-courses1">

                                    <a class="carousel-control-next js-mdk-carousel-control mt-n24pt"
                                       href="#carousel-courses1"
                                       role="button"
                                       data-slide="next">
                                        <span class="carousel-control-icon material-icons"
                                              aria-hidden="true">keyboard_arrow_right</span>
                                        <span class="sr-only">Next</span>
                                    </a>

                                    <div class="mdk-carousel__content">

                                        <div class="col-12 col-sm-6">

                                            <div class="card card-sm card--elevated p-relative o-hidden overlay overlay--primary-dodger-blue js-overlay mdk-reveal js-mdk-reveal "
                                                 data-partial-height="44"
                                                 data-toggle="popover"
                                                 data-trigger="click">

                                                <a href="student-take-course.html"
                                                   class="js-image"
                                                   data-position="">
                                                    <img src ="{{asset('Student/images/paths/angular_430x168.png')}}"
                                                         alt="course">
                                                    <span class="overlay__content align-items-start justify-content-start">
                                                        <span class="overlay__action card-body d-flex align-items-center">
                                                            <i class="material-icons mr-4pt">play_circle_outline</i>
                                                            <span class="card-title text-white">Resume</span>
                                                        </span>
                                                    </span>
                                                </a>

                                                <span class="corner-ribbon corner-ribbon--default-right-top corner-ribbon--shadow bg-accent text-white">NEW</span>

                                                <div class="mdk-reveal__content">
                                                    <div class="card-body">
                                                        <div class="d-flex">
                                                            <div class="flex">
                                                                <a class="card-title"
                                                                   href="student-take-course.html">Learn Angular fundamentals</a>
                                                                <small class="text-50 font-weight-bold mb-4pt">Elijah Murray</small>
                                                            </div>
                                                            <a href="student-take-course.html"
                                                               data-toggle="tooltip"
                                                               data-title="Add Favorite"
                                                               data-placement="top"
                                                               data-boundary="window"
                                                               class="ml-4pt material-icons text-20 card-course__icon-favorite">favorite_border</a>
                                                        </div>
                                                        <div class="d-flex">
                                                            <div class="rating flex">
                                                                <span class="rating__item"><span class="material-icons">star</span></span>
                                                                <span class="rating__item"><span class="material-icons">star</span></span>
                                                                <span class="rating__item"><span class="material-icons">star</span></span>
                                                                <span class="rating__item"><span class="material-icons">star</span></span>
                                                                <span class="rating__item"><span class="material-icons">star_border</span></span>
                                                            </div>
                                                            <small class="text-50">6 hours</small>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="popoverContainer d-none">
                                                <div class="media">
                                                    <div class="media-left mr-12pt">
                                                        <img src ="{{asset('Student/images/paths/angular_40x40@2x.png')}}"
                                                             width="40"
                                                             height="40"
                                                             alt="Angular"
                                                             class="rounded">
                                                    </div>
                                                    <div class="media-body">
                                                        <div class="card-title mb-0">Learn Angular fundamentals</div>
                                                        <p class="lh-1 mb-0">
                                                            <span class="text-50 small">with</span>
                                                            <span class="text-50 small font-weight-bold">Elijah Murray</span>
                                                        </p>
                                                    </div>
                                                </div>

                                                <p class="my-16pt text-70">Learn the fundamentals of working with Angular and how to create basic applications.</p>

                                                <div class="mb-16pt">
                                                    <div class="d-flex align-items-center">
                                                        <span class="material-icons icon-16pt text-50 mr-8pt">check</span>
                                                        <p class="flex text-50 lh-1 mb-0"><small>Fundamentals of working with Angular</small></p>
                                                    </div>
                                                    <div class="d-flex align-items-center">
                                                        <span class="material-icons icon-16pt text-50 mr-8pt">check</span>
                                                        <p class="flex text-50 lh-1 mb-0"><small>Create complete Angular applications</small></p>
                                                    </div>
                                                    <div class="d-flex align-items-center">
                                                        <span class="material-icons icon-16pt text-50 mr-8pt">check</span>
                                                        <p class="flex text-50 lh-1 mb-0"><small>Working with the Angular CLI</small></p>
                                                    </div>
                                                    <div class="d-flex align-items-center">
                                                        <span class="material-icons icon-16pt text-50 mr-8pt">check</span>
                                                        <p class="flex text-50 lh-1 mb-0"><small>Understanding Dependency Injection</small></p>
                                                    </div>
                                                    <div class="d-flex align-items-center">
                                                        <span class="material-icons icon-16pt text-50 mr-8pt">check</span>
                                                        <p class="flex text-50 lh-1 mb-0"><small>Testing with Angular</small></p>
                                                    </div>
                                                </div>

                                                <div class="my-32pt">
                                                    <div class="d-flex align-items-center mb-8pt justify-content-center">
                                                        <div class="d-flex align-items-center mr-8pt">
                                                            <span class="material-icons icon-16pt text-50 mr-4pt">access_time</span>
                                                            <p class="flex text-50 lh-1 mb-0"><small>50 minutes left</small></p>
                                                        </div>
                                                        <div class="d-flex align-items-center">
                                                            <span class="material-icons icon-16pt text-50 mr-4pt">play_circle_outline</span>
                                                            <p class="flex text-50 lh-1 mb-0"><small>12 lessons</small></p>
                                                        </div>
                                                    </div>
                                                    <div class="d-flex align-items-center justify-content-center">
                                                        <a href="student-take-lesson.html"
                                                           class="btn btn-primary mr-8pt">Resume</a>
                                                        <a href="student-take-course.html"
                                                           class="btn btn-outline-secondary ml-0">Start over</a>
                                                    </div>
                                                </div>

                                                <div class="d-flex align-items-center">
                                                    <small class="text-50 mr-8pt">Your rating</small>
                                                    <div class="rating mr-8pt">
                                                        <span class="rating__item"><span class="material-icons text-primary">star</span></span>
                                                        <span class="rating__item"><span class="material-icons text-primary">star</span></span>
                                                        <span class="rating__item"><span class="material-icons text-primary">star</span></span>
                                                        <span class="rating__item"><span class="material-icons text-primary">star</span></span>
                                                        <span class="rating__item"><span class="material-icons text-primary">star_border</span></span>
                                                    </div>
                                                    <small class="text-50">4/5</small>
                                                </div>

                                            </div>

                                        </div>

                                        <div class="col-12 col-sm-6">

                                            <div class="card card-sm card--elevated p-relative o-hidden overlay overlay--primary-dodger-blue js-overlay mdk-reveal js-mdk-reveal "
                                                 data-partial-height="44"
                                                 data-toggle="popover"
                                                 data-trigger="click">

                                                <a href="student-take-course.html"
                                                   class="js-image"
                                                   data-position="">
                                                    <img src ="{{asset('Student/images/paths/swift_430x168.png')}}"
                                                         alt="course">
                                                    <span class="overlay__content align-items-start justify-content-start">
                                                        <span class="overlay__action card-body d-flex align-items-center">
                                                            <i class="material-icons mr-4pt">play_circle_outline</i>
                                                            <span class="card-title text-white">Resume</span>
                                                        </span>
                                                    </span>
                                                </a>

                                                <div class="mdk-reveal__content">
                                                    <div class="card-body">
                                                        <div class="d-flex">
                                                            <div class="flex">
                                                                <a class="card-title"
                                                                   href="student-take-course.html">Build an iOS Application in Swift</a>
                                                                <small class="text-50 font-weight-bold mb-4pt">Elijah Murray</small>
                                                            </div>
                                                            <a href="student-take-course.html"
                                                               data-toggle="tooltip"
                                                               data-title="Remove Favorite"
                                                               data-placement="top"
                                                               data-boundary="window"
                                                               class="ml-4pt material-icons text-20 card-course__icon-favorite">favorite</a>
                                                        </div>
                                                        <div class="d-flex">
                                                            <div class="rating flex">
                                                                <span class="rating__item"><span class="material-icons">star</span></span>
                                                                <span class="rating__item"><span class="material-icons">star</span></span>
                                                                <span class="rating__item"><span class="material-icons">star</span></span>
                                                                <span class="rating__item"><span class="material-icons">star</span></span>
                                                                <span class="rating__item"><span class="material-icons">star_border</span></span>
                                                            </div>
                                                            <small class="text-50">6 hours</small>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="popoverContainer d-none">
                                                <div class="media">
                                                    <div class="media-left mr-12pt">
                                                        <img src ="{{asset('Student/images/paths/swift_40x40@2x.png')}}"
                                                             width="40"
                                                             height="40"
                                                             alt="Angular"
                                                             class="rounded">
                                                    </div>
                                                    <div class="media-body">
                                                        <div class="card-title mb-0">Build an iOS Application in Swift</div>
                                                        <p class="lh-1 mb-0">
                                                            <span class="text-50 small">with</span>
                                                            <span class="text-50 small font-weight-bold">Elijah Murray</span>
                                                        </p>
                                                    </div>
                                                </div>

                                                <p class="my-16pt text-70">Learn the fundamentals of working with Angular and how to create basic applications.</p>

                                                <div class="mb-16pt">
                                                    <div class="d-flex align-items-center">
                                                        <span class="material-icons icon-16pt text-50 mr-8pt">check</span>
                                                        <p class="flex text-50 lh-1 mb-0"><small>Fundamentals of working with Angular</small></p>
                                                    </div>
                                                    <div class="d-flex align-items-center">
                                                        <span class="material-icons icon-16pt text-50 mr-8pt">check</span>
                                                        <p class="flex text-50 lh-1 mb-0"><small>Create complete Angular applications</small></p>
                                                    </div>
                                                    <div class="d-flex align-items-center">
                                                        <span class="material-icons icon-16pt text-50 mr-8pt">check</span>
                                                        <p class="flex text-50 lh-1 mb-0"><small>Working with the Angular CLI</small></p>
                                                    </div>
                                                    <div class="d-flex align-items-center">
                                                        <span class="material-icons icon-16pt text-50 mr-8pt">check</span>
                                                        <p class="flex text-50 lh-1 mb-0"><small>Understanding Dependency Injection</small></p>
                                                    </div>
                                                    <div class="d-flex align-items-center">
                                                        <span class="material-icons icon-16pt text-50 mr-8pt">check</span>
                                                        <p class="flex text-50 lh-1 mb-0"><small>Testing with Angular</small></p>
                                                    </div>
                                                </div>

                                                <div class="my-32pt">
                                                    <div class="d-flex align-items-center mb-8pt justify-content-center">
                                                        <div class="d-flex align-items-center mr-8pt">
                                                            <span class="material-icons icon-16pt text-50 mr-4pt">access_time</span>
                                                            <p class="flex text-50 lh-1 mb-0"><small>50 minutes left</small></p>
                                                        </div>
                                                        <div class="d-flex align-items-center">
                                                            <span class="material-icons icon-16pt text-50 mr-4pt">play_circle_outline</span>
                                                            <p class="flex text-50 lh-1 mb-0"><small>12 lessons</small></p>
                                                        </div>
                                                    </div>
                                                    <div class="d-flex align-items-center justify-content-center">
                                                        <a href="student-take-lesson.html"
                                                           class="btn btn-primary mr-8pt">Resume</a>
                                                        <a href="student-take-course.html"
                                                           class="btn btn-outline-secondary ml-0">Start over</a>
                                                    </div>
                                                </div>

                                                <div class="d-flex align-items-center">
                                                    <small class="text-50 mr-8pt">Your rating</small>
                                                    <div class="rating mr-8pt">
                                                        <span class="rating__item"><span class="material-icons text-primary">star</span></span>
                                                        <span class="rating__item"><span class="material-icons text-primary">star</span></span>
                                                        <span class="rating__item"><span class="material-icons text-primary">star</span></span>
                                                        <span class="rating__item"><span class="material-icons text-primary">star</span></span>
                                                        <span class="rating__item"><span class="material-icons text-primary">star_border</span></span>
                                                    </div>
                                                    <small class="text-50">4/5</small>
                                                </div>

                                            </div>

                                        </div>

                                        <div class="col-12 col-sm-6">

                                            <div class="card card-sm card--elevated p-relative o-hidden overlay overlay--primary-dodger-blue js-overlay mdk-reveal js-mdk-reveal "
                                                 data-partial-height="44"
                                                 data-toggle="popover"
                                                 data-trigger="click">

                                                <a href="student-take-course.html"
                                                   class="js-image"
                                                   data-position="">
                                                    <img src ="{{asset('Student/images/paths/wordpress_430x168.png')}}"
                                                         alt="course">
                                                    <span class="overlay__content align-items-start justify-content-start">
                                                        <span class="overlay__action card-body d-flex align-items-center">
                                                            <i class="material-icons mr-4pt">play_circle_outline</i>
                                                            <span class="card-title text-white">Resume</span>
                                                        </span>
                                                    </span>
                                                </a>

                                                <div class="mdk-reveal__content">
                                                    <div class="card-body">
                                                        <div class="d-flex">
                                                            <div class="flex">
                                                                <a class="card-title"
                                                                   href="student-take-course.html">Build a WordPress Website</a>
                                                                <small class="text-50 font-weight-bold mb-4pt">Elijah Murray</small>
                                                            </div>
                                                            <a href="student-take-course.html"
                                                               data-toggle="tooltip"
                                                               data-title="Add Favorite"
                                                               data-placement="top"
                                                               data-boundary="window"
                                                               class="ml-4pt material-icons text-20 card-course__icon-favorite">favorite_border</a>
                                                        </div>
                                                        <div class="d-flex">
                                                            <div class="rating flex">
                                                                <span class="rating__item"><span class="material-icons">star</span></span>
                                                                <span class="rating__item"><span class="material-icons">star</span></span>
                                                                <span class="rating__item"><span class="material-icons">star</span></span>
                                                                <span class="rating__item"><span class="material-icons">star</span></span>
                                                                <span class="rating__item"><span class="material-icons">star_border</span></span>
                                                            </div>
                                                            <small class="text-50">6 hours</small>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="popoverContainer d-none">
                                                <div class="media">
                                                    <div class="media-left mr-12pt">
                                                        <img src ="{{asset('Student/images/paths/wordpress_40x40@2x.png')}}"
                                                             width="40"
                                                             height="40"
                                                             alt="Angular"
                                                             class="rounded">
                                                    </div>
                                                    <div class="media-body">
                                                        <div class="card-title mb-0">Build a WordPress Website</div>
                                                        <p class="lh-1 mb-0">
                                                            <span class="text-50 small">with</span>
                                                            <span class="text-50 small font-weight-bold">Elijah Murray</span>
                                                        </p>
                                                    </div>
                                                </div>

                                                <p class="my-16pt text-70">Learn the fundamentals of working with Angular and how to create basic applications.</p>

                                                <div class="mb-16pt">
                                                    <div class="d-flex align-items-center">
                                                        <span class="material-icons icon-16pt text-50 mr-8pt">check</span>
                                                        <p class="flex text-50 lh-1 mb-0"><small>Fundamentals of working with Angular</small></p>
                                                    </div>
                                                    <div class="d-flex align-items-center">
                                                        <span class="material-icons icon-16pt text-50 mr-8pt">check</span>
                                                        <p class="flex text-50 lh-1 mb-0"><small>Create complete Angular applications</small></p>
                                                    </div>
                                                    <div class="d-flex align-items-center">
                                                        <span class="material-icons icon-16pt text-50 mr-8pt">check</span>
                                                        <p class="flex text-50 lh-1 mb-0"><small>Working with the Angular CLI</small></p>
                                                    </div>
                                                    <div class="d-flex align-items-center">
                                                        <span class="material-icons icon-16pt text-50 mr-8pt">check</span>
                                                        <p class="flex text-50 lh-1 mb-0"><small>Understanding Dependency Injection</small></p>
                                                    </div>
                                                    <div class="d-flex align-items-center">
                                                        <span class="material-icons icon-16pt text-50 mr-8pt">check</span>
                                                        <p class="flex text-50 lh-1 mb-0"><small>Testing with Angular</small></p>
                                                    </div>
                                                </div>

                                                <div class="my-32pt">
                                                    <div class="d-flex align-items-center mb-8pt justify-content-center">
                                                        <div class="d-flex align-items-center mr-8pt">
                                                            <span class="material-icons icon-16pt text-50 mr-4pt">access_time</span>
                                                            <p class="flex text-50 lh-1 mb-0"><small>50 minutes left</small></p>
                                                        </div>
                                                        <div class="d-flex align-items-center">
                                                            <span class="material-icons icon-16pt text-50 mr-4pt">play_circle_outline</span>
                                                            <p class="flex text-50 lh-1 mb-0"><small>12 lessons</small></p>
                                                        </div>
                                                    </div>
                                                    <div class="d-flex align-items-center justify-content-center">
                                                        <a href="student-take-lesson.html"
                                                           class="btn btn-primary mr-8pt">Resume</a>
                                                        <a href="student-take-course.html"
                                                           class="btn btn-outline-secondary ml-0">Start over</a>
                                                    </div>
                                                </div>

                                                <div class="d-flex align-items-center">
                                                    <small class="text-50 mr-8pt">Your rating</small>
                                                    <div class="rating mr-8pt">
                                                        <span class="rating__item"><span class="material-icons text-primary">star</span></span>
                                                        <span class="rating__item"><span class="material-icons text-primary">star</span></span>
                                                        <span class="rating__item"><span class="material-icons text-primary">star</span></span>
                                                        <span class="rating__item"><span class="material-icons text-primary">star</span></span>
                                                        <span class="rating__item"><span class="material-icons text-primary">star_border</span></span>
                                                    </div>
                                                    <small class="text-50">4/5</small>
                                                </div>

                                            </div>

                                        </div>

                                        <div class="col-12 col-sm-6">

                                            <div class="card card-sm card--elevated p-relative o-hidden overlay overlay--primary-dodger-blue js-overlay mdk-reveal js-mdk-reveal "
                                                 data-partial-height="44"
                                                 data-toggle="popover"
                                                 data-trigger="click">

                                                <a href="student-take-course.html"
                                                   class="js-image"
                                                   data-position="left">
                                                    <img src ="{{asset('Student/images/paths/react_430x168.png')}}"
                                                         alt="course">
                                                    <span class="overlay__content align-items-start justify-content-start">
                                                        <span class="overlay__action card-body d-flex align-items-center">
                                                            <i class="material-icons mr-4pt">play_circle_outline</i>
                                                            <span class="card-title text-white">Resume</span>
                                                        </span>
                                                    </span>
                                                </a>

                                                <div class="mdk-reveal__content">
                                                    <div class="card-body">
                                                        <div class="d-flex">
                                                            <div class="flex">
                                                                <a class="card-title"
                                                                   href="student-take-course.html">Become a React Native Developer</a>
                                                                <small class="text-50 font-weight-bold mb-4pt">Elijah Murray</small>
                                                            </div>
                                                            <a href="student-take-course.html"
                                                               data-toggle="tooltip"
                                                               data-title="Add Favorite"
                                                               data-placement="top"
                                                               data-boundary="window"
                                                               class="ml-4pt material-icons text-20 card-course__icon-favorite">favorite_border</a>
                                                        </div>
                                                        <div class="d-flex">
                                                            <div class="rating flex">
                                                                <span class="rating__item"><span class="material-icons">star</span></span>
                                                                <span class="rating__item"><span class="material-icons">star</span></span>
                                                                <span class="rating__item"><span class="material-icons">star</span></span>
                                                                <span class="rating__item"><span class="material-icons">star</span></span>
                                                                <span class="rating__item"><span class="material-icons">star_border</span></span>
                                                            </div>
                                                            <small class="text-50">6 hours</small>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="popoverContainer d-none">
                                                <div class="media">
                                                    <div class="media-left mr-12pt">
                                                        <img src ="{{asset('Student/images/paths/react_40x40@2x.png')}}"
                                                             width="40"
                                                             height="40"
                                                             alt="Angular"
                                                             class="rounded">
                                                    </div>
                                                    <div class="media-body">
                                                        <div class="card-title mb-0">Become a React Native Developer</div>
                                                        <p class="lh-1 mb-0">
                                                            <span class="text-50 small">with</span>
                                                            <span class="text-50 small font-weight-bold">Elijah Murray</span>
                                                        </p>
                                                    </div>
                                                </div>

                                                <p class="my-16pt text-70">Learn the fundamentals of working with Angular and how to create basic applications.</p>

                                                <div class="mb-16pt">
                                                    <div class="d-flex align-items-center">
                                                        <span class="material-icons icon-16pt text-50 mr-8pt">check</span>
                                                        <p class="flex text-50 lh-1 mb-0"><small>Fundamentals of working with Angular</small></p>
                                                    </div>
                                                    <div class="d-flex align-items-center">
                                                        <span class="material-icons icon-16pt text-50 mr-8pt">check</span>
                                                        <p class="flex text-50 lh-1 mb-0"><small>Create complete Angular applications</small></p>
                                                    </div>
                                                    <div class="d-flex align-items-center">
                                                        <span class="material-icons icon-16pt text-50 mr-8pt">check</span>
                                                        <p class="flex text-50 lh-1 mb-0"><small>Working with the Angular CLI</small></p>
                                                    </div>
                                                    <div class="d-flex align-items-center">
                                                        <span class="material-icons icon-16pt text-50 mr-8pt">check</span>
                                                        <p class="flex text-50 lh-1 mb-0"><small>Understanding Dependency Injection</small></p>
                                                    </div>
                                                    <div class="d-flex align-items-center">
                                                        <span class="material-icons icon-16pt text-50 mr-8pt">check</span>
                                                        <p class="flex text-50 lh-1 mb-0"><small>Testing with Angular</small></p>
                                                    </div>
                                                </div>

                                                <div class="my-32pt">
                                                    <div class="d-flex align-items-center mb-8pt justify-content-center">
                                                        <div class="d-flex align-items-center mr-8pt">
                                                            <span class="material-icons icon-16pt text-50 mr-4pt">access_time</span>
                                                            <p class="flex text-50 lh-1 mb-0"><small>50 minutes left</small></p>
                                                        </div>
                                                        <div class="d-flex align-items-center">
                                                            <span class="material-icons icon-16pt text-50 mr-4pt">play_circle_outline</span>
                                                            <p class="flex text-50 lh-1 mb-0"><small>12 lessons</small></p>
                                                        </div>
                                                    </div>
                                                    <div class="d-flex align-items-center justify-content-center">
                                                        <a href="student-take-lesson.html"
                                                           class="btn btn-primary mr-8pt">Resume</a>
                                                        <a href="student-take-course.html"
                                                           class="btn btn-outline-secondary ml-0">Start over</a>
                                                    </div>
                                                </div>

                                                <div class="d-flex align-items-center">
                                                    <small class="text-50 mr-8pt">Your rating</small>
                                                    <div class="rating mr-8pt">
                                                        <span class="rating__item"><span class="material-icons text-primary">star</span></span>
                                                        <span class="rating__item"><span class="material-icons text-primary">star</span></span>
                                                        <span class="rating__item"><span class="material-icons text-primary">star</span></span>
                                                        <span class="rating__item"><span class="material-icons text-primary">star</span></span>
                                                        <span class="rating__item"><span class="material-icons text-primary">star_border</span></span>
                                                    </div>
                                                    <small class="text-50">4/5</small>
                                                </div>

                                            </div>

                                        </div>

                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>

                    <div class="page-separator">
                        <div class="page-separator__text">Discussions</div>
                    </div>

                    <div class="card">

                        <div class="list-group list-group-flush">

                            <div class="list-group-item p-3">
                                <div class="row align-items-start">
                                    <div class="col-md-3 mb-8pt mb-md-0">
                                        <div class="media align-items-center">
                                            <div class="media-left mr-12pt">
                                                <a href=""
                                                   class="avatar avatar-sm">
                                                    <!-- <img src="../../LB" alt="avatar" class="avatar-img rounded-circle"> -->
                                                    <span class="avatar-title rounded-circle">LB</span>
                                                </a>
                                            </div>
                                            <div class="d-flex flex-column media-body media-middle">
                                                <a href=""
                                                   class="card-title">Laza Bogdan</a>
                                                <small class="text-muted">2 days ago</small>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col mb-8pt mb-md-0">
                                        <p class="mb-8pt"><a href="discussion.html"
                                               class="text-body"><strong>Using Angular HttpClientModule instead of HttpModule</strong></a></p>

                                        <a href="discussion.html"
                                           class="chip chip-outline-secondary">Angular fundamentals</a>

                                    </div>
                                    <div class="col-auto d-flex flex-column align-items-center justify-content-center">
                                        <h5 class="m-0">1</h5>
                                        <p class="lh-1 mb-0"><small class="text-70">answers</small></p>
                                    </div>
                                </div>
                            </div>

                            <div class="list-group-item p-3">
                                <div class="row align-items-start">
                                    <div class="col-md-3 mb-8pt mb-md-0">
                                        <div class="media align-items-center">
                                            <div class="media-left mr-12pt">
                                                <a href=""
                                                   class="avatar avatar-sm">
                                                    <!-- <img src="../../AC" alt="avatar" class="avatar-img rounded-circle"> -->
                                                    <span class="avatar-title rounded-circle">AC</span>
                                                </a>
                                            </div>
                                            <div class="d-flex flex-column media-body media-middle">
                                                <a href=""
                                                   class="card-title">Adam Curtis</a>
                                                <small class="text-muted">3 days ago</small>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col mb-8pt mb-md-0">
                                        <p class="mb-0"><a href="discussion.html"
                                               class="text-body"><strong>Why am I getting an error when trying to install angular/http@2.4.2</strong></a></p>

                                    </div>
                                    <div class="col-auto d-flex flex-column align-items-center justify-content-center">
                                        <h5 class="m-0">1</h5>
                                        <p class="lh-1 mb-0"><small class="text-70">answers</small></p>
                                    </div>
                                </div>
                            </div>

                        </div>

                        <div class="card-footer p-8pt">

                            <ul class="pagination justify-content-start pagination-xsm m-0">
                                <li class="page-item disabled">
                                    <a class="page-link"
                                       href="#"
                                       aria-label="Previous">
                                        <span aria-hidden="true"
                                              class="material-icons">chevron_left</span>
                                        <span>Prev</span>
                                    </a>
                                </li>
                                <li class="page-item">
                                    <a class="page-link"
                                       href="#"
                                       aria-label="Page 1">
                                        <span>1</span>
                                    </a>
                                </li>
                                <li class="page-item">
                                    <a class="page-link"
                                       href="#"
                                       aria-label="Page 2">
                                        <span>2</span>
                                    </a>
                                </li>
                                <li class="page-item">
                                    <a class="page-link"
                                       href="#"
                                       aria-label="Next">
                                        <span>Next</span>
                                        <span aria-hidden="true"
                                              class="material-icons">chevron_right</span>
                                    </a>
                                </li>
                            </ul>

                            <!-- <ul class="pagination justify-content-center pagination-sm">
<li class="page-item disabled">
<a class="page-link" href="#" aria-label="Previous">
  <span aria-hidden="true" class="material-icons">chevron_left</span>
  <span>Prev</span>
</a>
</li>
<li class="page-item active">
<a class="page-link" href="#" aria-label="1">
  <span>1</span>
</a>
</li>
<li class="page-item">
<a class="page-link" href="#" aria-label="1">
  <span>2</span>
</a>
</li>
<li class="page-item">
<a class="page-link" href="#" aria-label="Next">
  <span>Next</span>
  <span aria-hidden="true" class="material-icons">chevron_right</span>
</a>
</li>
</ul> -->
                        </div>
                    </div>

                    <div class="page-separator">
                        <div class="page-separator__text">Quizzes</div>
                    </div>

                    <div class="row card-group-row">

                        <div class="card-group-row__col col-md-6">

                            <div class="card card-group-row__card card-sm">
                                <div class="card-body d-flex align-items-center">
                                    <a href="student-take-quiz.html"
                                       class="avatar overlay overlay--primary avatar-4by3 mr-12pt">
                                        <img src ="{{asset('Student/images/paths/typescript_200x168.png')}}"
                                             alt="Introduction to TypeScript"
                                             class="avatar-img rounded">
                                        <span class="overlay__content"></span>
                                    </a>
                                    <div class="flex mr-12pt">
                                        <a class="card-title"
                                           href="student-take-quiz.html">Introduction to TypeScript</a>
                                        <div class="card-subtitle text-50">3 days ago</div>
                                    </div>
                                    <div class="d-flex flex-column align-items-center">
                                        <span class="lead text-headings lh-1">2.8</span>
                                        <small class="text-50 text-uppercase text-headings">Score</small>
                                    </div>
                                </div>

                                <div class="progress rounded-0"
                                     style="height: 4px;">
                                    <div class="progress-bar bg-primary"
                                         role="progressbar"
                                         style="width: 37%;"
                                         aria-valuenow="37"
                                         aria-valuemin="0"
                                         aria-valuemax="100"></div>
                                </div>

                                <div class="card-footer">
                                    <div class="d-flex align-items-center">
                                        <div class="flex mr-2">
                                            <a href="student-take-quiz.html"
                                               class="btn btn-light btn-sm">

                                                <i class="material-icons icon--left">refresh</i> Continue

                                            </a>
                                        </div>

                                        <div class="dropdown">
                                            <a href="#"
                                               data-toggle="dropdown"
                                               data-caret="false"
                                               class="text-muted"><i class="material-icons">more_horiz</i></a>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a href="student-take-quiz.html"
                                                   class="dropdown-item">Continue</a>
                                                <a href="student-quiz-result-details.html"
                                                   class="dropdown-item">View Result</a>
                                                <div class="dropdown-divider"></div>
                                                <a href="student-take-quiz.html"
                                                   class="dropdown-item text-danger">Reset Quiz</a>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>

                        </div>

                        <div class="card-group-row__col col-md-6">

                            <div class="card card-group-row__card card-sm">
                                <div class="card-body d-flex align-items-center">
                                    <a href="student-take-quiz.html"
                                       class="avatar overlay overlay--primary avatar-4by3 mr-12pt">
                                        <img src ="{{asset('Student/images/paths/angular_200x168.png')}}"
                                             alt="Angular Fundamentals"
                                             class="avatar-img rounded">
                                        <span class="overlay__content"></span>
                                    </a>
                                    <div class="flex mr-12pt">
                                        <a class="card-title"
                                           href="student-take-quiz.html">Angular Fundamentals</a>
                                        <div class="card-subtitle text-50">3 days ago</div>
                                    </div>
                                    <div class="d-flex flex-column align-items-center">
                                        <span class="lead text-headings lh-1">3.3</span>
                                        <small class="text-50 text-uppercase text-headings">Score</small>
                                    </div>
                                </div>

                                <div class="card-footer">
                                    <div class="d-flex align-items-center">
                                        <div class="flex mr-2">
                                            <a href="student-take-quiz.html"
                                               class="btn btn-light btn-sm">

                                                <i class="material-icons icon--left">playlist_add_check</i> Reset
                                                <span class="badge badge-dark badge-notifications ml-2">5</span>

                                            </a>
                                        </div>

                                        <div class="dropdown">
                                            <a href="#"
                                               data-toggle="dropdown"
                                               data-caret="false"
                                               class="text-muted"><i class="material-icons">more_horiz</i></a>
                                            <div class="dropdown-menu dropdown-menu-right">
                                                <a href="student-take-quiz.html"
                                                   class="dropdown-item">Continue</a>
                                                <a href="student-quiz-result-details.html"
                                                   class="dropdown-item">View Result</a>
                                                <div class="dropdown-divider"></div>
                                                <a href="student-take-quiz.html"
                                                   class="dropdown-item text-danger">Reset Quiz</a>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>

                        </div>

                    </div>

                    <div class="mb-32pt">

                        <ul class="pagination justify-content-start pagination-xsm m-0">
                            <li class="page-item disabled">
                                <a class="page-link"
                                   href="#"
                                   aria-label="Previous">
                                    <span aria-hidden="true"
                                          class="material-icons">chevron_left</span>
                                    <span>Prev</span>
                                </a>
                            </li>
                            <li class="page-item">
                                <a class="page-link"
                                   href="#"
                                   aria-label="Page 1">
                                    <span>1</span>
                                </a>
                            </li>
                            <li class="page-item">
                                <a class="page-link"
                                   href="#"
                                   aria-label="Page 2">
                                    <span>2</span>
                                </a>
                            </li>
                            <li class="page-item">
                                <a class="page-link"
                                   href="#"
                                   aria-label="Next">
                                    <span>Next</span>
                                    <span aria-hidden="true"
                                          class="material-icons">chevron_right</span>
                                </a>
                            </li>
                        </ul>

                     
                    </div>

                </div>
            </div>

            <!-- // END Page Content -->

            <!-- Footer -->

            <div class="bg-white border-top-2 mt-auto">
                <div class="container page__container page-section d-flex flex-column">
                    <p class="text-70 brand mb-24pt">
                        <img class="brand-icon"
                             src ="{{asset('Student/images/logo/black-70@2x.png')}}"
                             width="30"
                             alt="Luma"> Luma
                    </p>
                    <p class="measure-lead-max text-50 small mr-8pt">Luma is a beautifully crafted user interface for modern Education Platforms, including Courses & Tutorials, Video Lessons, Student and Teacher Dashboard, Curriculum Management, Earnings and Reporting, ERP, HR, CMS, Tasks, Projects, eCommerce and more.</p>
                    <p class="mb-8pt d-flex">
                        <a href=""
                           class="text-70 text-underline mr-8pt small">Terms</a>
                        <a href=""
                           class="text-70 text-underline small">Privacy policy</a>
                    </p>
                    <p class="text-50 small mt-n1 mb-0">Copyright 2019 &copy; All rights reserved.</p>
                </div>
            </div>

            <!-- // END Footer -->

        </div>

        <!-- // END drawer-layout__content -->

        <!-- Drawer -->

        @include('Students.Common.student_sidebar')

        <!-- // END Drawer -->

    </div>

    <!-- // END Drawer Layout -->

</body>

