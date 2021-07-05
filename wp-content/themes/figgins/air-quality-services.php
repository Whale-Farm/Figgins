<?php

/**
* Template Name: Air quality service template
*

* @package Figgins

*/


get_header();

?>


<!-- ===================================== Important Note ===================================== -->
<!-- 
This template is being used for two pages in the wp admin:
- Home air quality
- Other services 
-->


<!-- We are using the page id or slug for the selection of category for the posts fetching loop -->

<!-- Home air quality page id is: 69 -->

<!-- Other services page id is: 71  -->

<?php 

// we are fetching the page id to select the category of which the posts will be shown here

global $post;

$currentPage = $post->ID;


// Now setting category for the loop according to the page


if($currentPage == 69){

   // 69 is the page id of the home air quality, if home air quality is the page we will set the category 
   // air quality service 

   $cat_id = '5';

   $head_htwo = "Air Quality Services";

   // 5 is the category id of air quality services 

}elseif($currentPage == 71){

   // 71 is the page id of the OTHER services, if other services is the page we will set the category 
   // other services 

 $cat_id = '6';

 $head_htwo = "Other Services";


 // 6 is the category id of other services 

}
?> 

<section class="banner-sect">
   <div class="container">
      <div class="row">
         <h1 class="page-head"><?php the_title();  ?></h1>
      </div>
   </div>
</section>

 <div class="main-content air-quality-services-page">
 	<section id="air-quality-services" class="mt-5">
 		<div class="container">
 			<div class="row">

 				<!-- We are fetching the services here by ID, Services is the custom post type and I have added
 				categoris so we are now fetching the posts by categoris.
 				cat id is most important -->

 				<?php


 				// This $cat_id is adjusted at the top according to the page

 				$args = array( 'post_type' => 'services', 'cat'=> $cat_id );

 				$the_query = new WP_Query( $args ); 

 				?>	


 				<div class="col-12 p-0">
                     <h2 class="service-main-head">
                       <?php echo $head_htwo ;?> 
                     </h2>
                 </div>

                 <div class="row">

                 	<?php if ( $the_query->have_posts() ) : ?>

            	   <?php while ( $the_query->have_posts() ) : $the_query->the_post(); ?>


            	   		   	<div class="col-12 child-service mb-5">

            	   		   		<h3 class="child-service-head">

            	   		   		    <a href="<?php the_permalink( );?>">
            	   		   		    	
            	   		   		    	<?php the_title(); ?>

            	   		   		    </a>

            	   		   		</h3>

            	   		   		<p>
            	   	               
            	   	               <?php the_content(); ?>

            	   	            </p>


            	   	            <!-- Table content -->
            	   	            <!-- I have made a custom field for the table content and fetching here for only
            	   	            those who have that field filled -->

            	   	            
            	   	                
            	   	                
            	   	                <?php if(!empty(get_field( "table_content" ) )){ ?>

            	   	                <div class="row  tuneup-table">

            	   	                <?php	echo get_field( "table_content" ); ?>
            	   	                
            	   	                </div>	

            	   	                <?php };?>


            	   	            

            	   		   	</div>	



            	  
            	  <?php endwhile;
            	  wp_reset_postdata(); ?>
            	  <?php else:  ?>
            	  <p><?php _e( 'Sorry, no posts matched your criteria.' ); ?></p>
            	  <?php endif; ?>  	



                 </div>	








 			</div>
 		</div>	
 	</section>	
 </div>	


 <?php  

get_footer();