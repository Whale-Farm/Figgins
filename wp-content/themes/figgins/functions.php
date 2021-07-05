 <?php


 /**

 *
 * Theme Functions
 *
 * @package Figgins

 */

 ?>


 <?php



 // == Theme Support

 function figgins_theme_setup(){

   add_theme_support('custom-logo');
   add_theme_support('title-tag');
   add_theme_support( 'post-thumbnails' ); 
   add_theme_support( 'automatic-feed-links' ); 

 }

 add_action( 'after_setup_theme', 'figgins_theme_setup' );


 function register_my_menus() {
   register_nav_menus(
     array(
       'header-menu' => __( 'Header Menu' ),
       'footer-menu' => __( 'Footer Menu' )
      )
    );
  }

  add_action( 'init', 'register_my_menus' );


    // Adding classes to li and anchor tag for bootstrap

    function menu_classes($classes, $item, $args) {
    if($args->theme_location == 'footer-menu') {
      $classes[] = 'nav-item ';
    }
    return $classes;
  }
  add_filter('nav_menu_css_class','menu_classes',1,3);

  // The above code was for li now lets see for the anchor tags
  function my_walker_nav_menu_start_el($item_output, $item, $depth, $args) {
  //    $classes     = implode(' ', $item->classes);
      $classes     = 'nav-link';
      $item_output = preg_replace('/<a /', '<a class="'.$classes.'"', $item_output, 1);
      return $item_output;
   }
  add_filter('walker_nav_menu_start_el', 'my_walker_nav_menu_start_el', 10, 4);



  function figgins_widgets_init() {

      register_sidebar( array(
          'name' => __( 'Footer Address And Phone' ),
          'id' => 'footer_addr_phn',
          'before-widget' =>  '',
          'after-widget' =>   '',
          'class' =>    '',
      ) ); 

      register_sidebar( array(
          'name' => __( 'Footer Social Links' ),
          'id' => 'footer_social',
          'before-widget' =>  '',
          'after-widget' =>   '',
          'class' =>    '',
      ) ); 

      register_sidebar( array(
          'name' => __( 'Copyright Text' ),
          'id' => 'copyright_text',
          'before-widget' =>  '',
          'after-widget' =>   '',
          'class' =>    '',
      ) ); 

      
        

  }

  add_action( 'widgets_init', 'figgins_widgets_init' );  

  class My_Text_Widget extends WP_Widget_Text {
      function widget( $args, $instance ) {
          extract($args);
          $title = apply_filters( 'widget_title', empty( $instance['title'] ) ? '' : $instance['title'], $instance, $this->id_base );
          $text = apply_filters( 'widget_text', empty( $instance['text'] ) ? '' : $instance['text'], $instance );
          echo $before_widget;
          if ( !empty( $title ) ) { echo $before_title . $title . $after_title; } ?>
              <?php echo !empty( $instance['filter'] ) ? wpautop( $text ) : $text; ?>
          <?php
          echo $after_widget;
      }
  }  

  remove_filter( 'the_content', 'wpautop' );
  remove_filter( 'the_excerpt', 'wpautop' );
  // For widgets 
  remove_filter('widget_text_content', 'wpautop');



// Shortcode for free estimate form

function free_estimate_shortcode(){ ?>
		 <div class="col-12 about-help-block ">
	       <?php    global $post;
    $post_slug = $post->post_name;
    ?>
        <h2 class="section-title text-center mt-4"> 
      
<?php 
      // here we will define the varriable for the content of the form

      $faq_form_cntnt =" And if you need an estimate, we'd be happy to help with that too. Contact us now using the form below:";

      $air_purify_form_cnt = "Let us know a time and date and we'd love to schedule some time to help you. As always, the initial estimate is 100% free. ";

      $other_normal_cntnt = "As always, second opinions and estimates are FREE! We love to empower our customers with knowledge so they can make informed decisions about the air quality in their own homes. Choose a time below.";

      $contct_page_cntn ="To guarantee we take care of your project as soon as possible, please choose a time below. As always, second opinions and estimates are FREE. We'd love to help you make an informed decision.";

// contact-us

      ?>    
      

       <?php if($post_slug =='home'){ 

        echo "We'd Love to Help";

      }elseif($post_slug =='faq'){

        echo "Still have questions? We'd love to help.";

       }else{

        echo "We Can Fix It!";

      };  ?>
      
      </h2>
        <p class="text-center pb-5">
          <?php if ($post_slug =='faq') {  
            echo $faq_form_cntnt; 
          }elseif($post_slug == 'air-purifiers'){
            echo $air_purify_form_cnt;
            }elseif($post_slug == 'contact-us'){
            echo $contct_page_cntn;
            }else{ echo $other_normal_cntnt; } ?>  
        </p>
	      <div class="row">
	         <div class="col-12  figgins-contact-form">

	         	 <?php echo do_shortcode('[contact-form-7 id="39" title="Free Estimate Form"]'); ?>


	         </div>
	      </div>   	
	  </div> 
<?php }


  // register shortcode 
add_shortcode('freeEstimateForm', 'free_estimate_shortcode');


// ACF Display Custom Fields
add_filter('acf/settings/remove_wp_meta_box', '__return_false');


 
 


