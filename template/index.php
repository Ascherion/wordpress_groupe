<!DOCTYPE html>
    <html>
        <head>
            <?php include 'header/header.html' ?>
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <title>Page Title</title>
            <meta name="viewport" content="width=device-width, initial-scale=1">
        </head>
        <body>
            <div class="container-flex">
                <div class="row">
                    <div class="col-lg-4 d-none d-lg-block col-12">
                        <div class="card">
                            <img class="card-img-top" src="sources/images/index.svg" alt="Card image cap">
                            <div class="card-body">
                                <h5 class="card-title">Card title</h5>
                                <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
                            </div>
                            <div class="card-footer">
                                <small class="text-muted">Last updated 3 mins ago</small>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-8 col-12">
                        <nav class="navbar navbar-expand navbar-dark bgDark">
                            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                                <ul class="navbar-nav mr-auto mt-2 mt-lg-0 list-inline">
                                    <li class="nav-item active list-inline-item">
                                        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                                    </li>
                                    <li class="nav-item list-inline-item">
                                        <a class="nav-link" href="#">About</a>
                                    </li>
                                    <li class="nav-item list-inline-item">
                                        <a class="nav-link" href="#">Skill</a>
                                    </li>
                                    <li class="nav-item list-inline-item">
                                        <a class="nav-link" href="#">Education</a>
                                    </li>
                                    <li class="nav-item list-inline-item">
                                        <a class="nav-link" href="#">Experience</a>
                                    </li>
                                    <li class="nav-item list-inline-item">
                                        <a class="nav-link" href="#">Contact</a>
                                    </li>
                                </ul>
                                <form class="my-2 my-lg-0">
                                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#searchToggle" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
                                        <i class="fas fa-search"></i>
                                    </button>
                                    <input class="collapse form-control mr-sm-2" id="searchToggle" type="search" placeholder="Search" aria-label="Search">
                                </form>
                            </div>
                        </nav>
                    </div>
                    <div class="col-lg-8 offset-lg-4 col-12 bgDark bgMargin">
                        <div id="carouselIndicators" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#carouselIndicators" data-slide-to="0" class="active"></li>
                                <li data-target="#carouselIndicators" data-slide-to="1"></li>
                                <li data-target="#carouselIndicators" data-slide-to="2"></li>
                            </ol>
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <img class="d-block w-100" src="sources/images/index.svg" alt="First slide">
                                    <div class="carousel-caption d-none d-md-block">
                                        <div class="float-left">
                                            <h2>Hello</h2>
                                            <h5>'lo</h5>
                                            <p>nya</p>
                                            <button class="cyanBlock"><i class="far fa-image mr-3"></i>View Portfolio</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <img class="d-block w-100" src="sources/images/index.svg" alt="Second slide">
                                    <div class="carousel-caption d-none d-md-block">
                                        <div class="float-left">
                                            <h2>Hello</h2>
                                            <h5>'lo</h5>
                                            <p>nya</p>
                                            <button class="cyanBlock"><i class="far fa-image mr-3"></i>View Portfolio</button>
                                        </div>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <img class="d-block w-100" src="sources/images/index.svg" alt="Third slide">
                                    <div class="carousel-caption d-none d-md-block">
                                        <div class="float-left">
                                            <h2>Hello</h2>
                                            <h5>'lo</h5>
                                            <p>nya</p>
                                            <button class="cyanBlock"><i class="far fa-image mr-3"></i>View Portfolio</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            </a>
                        </div>
                    </div>
                </div>
                    <div class="col-lg-8 col-12 offset-lg-4 bgDark aboutMe">
                        <h2 class="mb-5"><i class="far fa-user cyanIcon mr-2"></i>About Me</h2>
                        <p class="marginBottom">Hello,I’m John Doe Creative Graphic Designer & User Experience Desiger based in Website,
                            I create digital Products a more Beautiful and usable place. This is Photoshop's version of Lorem
                            Ipsum. Proin gravida nibh vel velit quet. Aenean sollicitudin, lorem quis bibendum auctor,
                            nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulpuate
                            cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt.
                        </p>
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-12">
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-sm-12">
                                    <div class="card">
                                        <i class="far fa-lightbulb fa-w-12 fa-2x img cyanIcon"></i>
                                        <div class="card-body">
                                            <p class="card-text">Logo Design</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-12">
                                    <div class="card">
                                        <i class="fab fa-firefox fa-w-15 fa-2x img" id="firefoxIcon"></i>
                                        <div class="card-body">
                                            <p class="card-text">Website</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-12">
                                    <div class="card">
                                        <i class="fas fa-desktop fa-w-18 fa-2x img" id="desktopIcon"></i>
                                        <div class="card-body">
                                            <p class="card-text">Softwares</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-12">
                                    <div class="card">
                                        <i class="fas fa-mobile-alt fa-w-10 fa-2x img" id="phoneIcon"></i>
                                        <div class="card-body">
                                            <p class="card-text">Applications</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-12 personalDetail underline">
                            <h6 class="mb-5">PERSONAL DETAILS</h6>
                            <div class="d-flex justify-content-between">
                                <p class="text-muted">Full Name<p>:</p><p>John Doe</p>
                            </div>
                            <div class="d-flex justify-content-between">
                                <p class="text-muted">Address<p>:</p><p>Street 110-B Kalani Bag, Dewas, M.P. INDIA</p>
                            </div>
                            <div class="d-flex justify-content-between">
                                <p class="text-muted">Zip Code<p>:</p><p>455001</p>
                            </div>
                            <div class="d-flex justify-content-between">
                                <p class="text-muted">Phone<p>:</p><p>+91 123 456 7890 , 0123 456789</p>
                            </div>
                            <div class="d-flex justify-content-between">
                                <p class="text-muted">Email<p>:</p><p>johndoe@example.com</p>
                            </div>
                            <div class="d-flex justify-content-between">
                                <p class="text-muted">Website<p>:</p><p>http://example.com</p>
                            </div>
                        </div>

                        <div class="row text-center cyanBackground" id="hireMe">
                            <span class="col-12 col-md-2 p-2">
                                <i class="far fa-image fa-3x"></i>
                            </span>
                            <p class="col-12 col-md-6 mt-3">Over Ten Year In The Game With 550+ Projects Successfully Done!</p>
                            <span class="col-12 col-md-4 mt-3">
                                <button class="buttonHireMe">
                                    <i class="far fa-envelope fa-lg"></i>Hire Me
                                </button>
                            </span>
                        </div>

                    </div>
                </div>
            </div>
            <script defer src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>
        </body>
    </html>
