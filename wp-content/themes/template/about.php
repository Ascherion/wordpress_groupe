
<?php
/*
* Template Name: about
* description: >-
* Page template most likely not working
*/
get_header();
?>
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
                                <li class="nav-item list-inline-item">
                                    <a class="nav-link" href="http://localhost/wordpress/index.php/">Accueil</a>
                                </li>
                                <li class="nav-item active list-inline-item">
                                    <a class="nav-link" href="http://localhost/wordpress/index.php/about-me/">About<span class="sr-only">(current)</span></a>
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
            </div>
            <div class="col-lg-8 col-12 offset-lg-4 bgDark aboutMe">
                <h2 class="mb-5"><i class="far fa-user cyanIcon mr-2"></i>About Me</h2>
                <p class="marginBottom">
                    <?php
                        while ( have_posts() ) : the_post();
                            echo the_content();
                        endwhile;
                    ?>
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
                    <?php the_meta(); ?>
                        <h6 class="mb-5">PERSONAL DETAILS</h6>
                        <div class="d-flex justify-content-between post-meta">
                            <p class="text-muted post-meta-key">Full Name<p>:</p><p class="post-meta">John Doe</p>
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
    </body>
</html>
