<?php

function theme_styles() {

	wp_enqueue_style('bootstrap_css', get_template_directory_uri() . '/css/bootstrap.min.css');
	wp_enqueue_style('main_css', get_template_directory_uri() . '/style.css');	
	wp_enqueue_style('font_awesome', get_template_directory_uri() . '/font-awesome/css/font-awesome.min.css');	
}
add_action('wp_enqueue_scripts', 'theme_styles');

function theme_js() {

	global $wp_scripts;

	wp_register_script('html5_shiv', 'https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js', '', '', false);
	wp_register_script('respond_js', 'https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js', '', '', false);

	$wp_scripts->add_data('html5_shiv', 'conditional', 'lt IE 8');
	$wp_scripts->add_data('respond_js', 'conditional', 'lt IE 8');

	wp_enqueue_script('bootstrap_js', get_template_directory_uri() . '/js/bootstrap.js', array(jquery), '', true);
	wp_enqueue_script('jquery_ease', get_template_directory_uri() . '/js/jquery.easing.min.js', '', '', true);
	wp_enqueue_script('classie_js', get_template_directory_uri() . '/js/classie.js', '', '', true);
	wp_enqueue_script('cbp_anim', get_template_directory_uri() . '/js/cbpAnimatedHeader.js', '', '', true);
	wp_enqueue_script('bootstrap_valid', get_template_directory_uri() . '/js/jqBootstrapValidation.js', '', '', true);
	wp_enqueue_script('contact_js', get_template_directory_uri() . '/js/contact_me.js', '', '', true);
	wp_enqueue_script('freelancer_js', get_template_directory_uri() . '/js/freelancer.js', '', '', true);
}
add_action('wp_enqueue_scripts', 'theme_js');

add_filter('show_admin_bar', '__return_false');

add_theme_support('menus');

function register_theme_menus() {

	register_nav_menus(
		array(
			'header-menu'	=> __('Header Menu')
		)
	);
}
add_action('init', 'register_theme_menus');



?>
