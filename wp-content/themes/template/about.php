
<?php
/*
* Template Name: about
* description: >-
* Page template most likely not working
*/
get_header();
?>
            <div class="col-lg-8 col-12 offset-lg-4 bgDark aboutMe">
                <h2 class="mb-5"><i class="far fa-user cyanIcon mr-2"></i>
                <?php
                    while ( have_posts() ) : the_post();
                        echo the_title();
                    endwhile;
                ?>
                </h2>
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
                        <?php $custom_fields = get_post_custom();
                        echo $custom_fields;?>
                            <p class="text-muted"><?php $key = get_post_custom_keys(); echo $key[3]; ?><p>:</p><p><?php echo get_post_meta($post->ID, 'Full Name', true); ?></p>
                        </div>
                        <div class="d-flex justify-content-between">
                            <p class="text-muted"><?php $key = get_post_custom_keys(); echo $key[4]; ?><p>:</p><p><?php echo get_post_meta($post->ID, 'Adress', true); ?></p>
                        </div>
                        <div class="d-flex justify-content-between">
                            <p class="text-muted"><?php $key = get_post_custom_keys(); echo $key[5]; ?><p>:</p><p><?php echo get_post_meta($post->ID, 'Zip Code', true); ?></p>
                        </div>
                        <div class="d-flex justify-content-between">
                            <p class="text-muted"><?php $key = get_post_custom_keys(); echo $key[6]; ?><p>:</p><p><?php echo get_post_meta($post->ID, 'Phone', true); ?></p>
                        </div>
                        <div class="d-flex justify-content-between">
                            <p class="text-muted"><?php $key = get_post_custom_keys(); echo $key[7]; ?><p>:</p><p><?php echo get_post_meta($post->ID, 'Email', true); ?></p>
                        </div>
                        <div class="d-flex justify-content-between">
                            <p class="text-muted"><?php $key = get_post_custom_keys(); echo $key[8]; ?><p>:</p><p><?php echo get_post_meta($post->ID, 'Website', true); ?></p>
                        </div>
                    </div>

                    <div class="row text-center cyanBackground" id="hireMe">
                        <span class="col-12 col-md-2 p-2">
                            <i class="far fa-image fa-3x"></i>
                        </span>
                        <p class="col-12 col-md-6 mt-3"><?php echo get_post_meta($post->ID, 'Hire', true); ?></p>
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
