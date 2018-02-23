<!DOCTYPE html>
    <html <?php language_attributes(); ?>>
        <head>
            <meta charset="<?php bloginfo( 'charset' ); ?>">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <title>Meow</title>
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <?php wp_head(); ?>
        </head>

        <body <?php body_class(); ?>>
            <div class="container-flex">
                    <div class="row">
                        <?php get_sidebar();?>
                        <div class="col-lg-8 col-12">
                            <nav class="navbar navbar-expand navbar-dark bgDark">
                                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                                    <span class="navbar-toggler-icon"></span>
                                </button>
                                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                                    <ul class="navbar-nav mr-auto mt-2 mt-lg-0 list-inline">
                                        <li class="nav-item active list-inline-item">
                                            <a class="nav-link" href="http://localhost/wordpress/index.php/">Accueil <span class="sr-only">(current)</span></a>
                                        </li>
                                        <li class="nav-item list-inline-item">
                                            <a class="nav-link" href="http://localhost/wordpress/index.php/about-me/">About</a>
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
