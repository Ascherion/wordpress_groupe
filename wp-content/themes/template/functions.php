<?php
    function headStyle(){
        wp_enqueue_style( 'bootstrap', '//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css');
        wp_enqueue_style( 'style', get_stylesheet_directory_uri().'/style.css');

}add_action( 'wp_enqueue_scripts', 'headStyle' );

    function headScript(){
        global $wp_scripts;

        wp_enqueue_script( 'jquery', '//code.jquery.com/jquery-3.2.1.slim.min.js', null, true );
        wp_enqueue_script( 'poppers', '//cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js', null, true );
        wp_enqueue_script( 'bootstrap_js', '//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js', null, true );
	wp_enqueue_script( 'fontawesome', '//use.fontawesome.com/releases/v5.0.6/js/all.js', null, true );
    }add_action( 'wp_enqueue_scripts', 'headScript' );
?>
