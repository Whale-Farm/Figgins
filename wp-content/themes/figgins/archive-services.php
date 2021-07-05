<?php

/**
* Services Template File
*

* @package Figgins

*/


get_header();

?> 





<section class="banner-sect">
   <div class="container">
      <div class="row">
         <h1 class="page-head"><?php post_type_archive_title();?></h1>
      </div>
   </div>
</section>

<div class="main-content services-page">

<section id="cooling-services">

	<div class="container">

		<!-- We are fetching the services here by ID, Services is the custom post type and I have added
		categoris so we are now fetching the posts by categoris.
		cat id is most important -->

		 <div class="row">

		 <?php 

		 // Cooling services category id is 3

		 $args = array( 'post_type' => 'services', 'cat'=> '3' );

		 $the_query = new WP_Query( $args ); 

		 ?>	

		 	<div class="col-12 p-0">
                     <h2 class="service-main-head">
                        Cooling Services
                     </h2>
            </div>


            <div class="row">
            	<!-- loop will be in this row -->

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



<section id="heating-services" class="mt-5">

	<div class="container">

		<!-- We are fetching the services here by ID, Services is the custom post type and I have added
		categoris so we are now fetching the posts by categoris.
		cat id is most important -->

		 <div class="row">

		 <?php 

		 // Cooling services category id is 3

		 $args = array( 'post_type' => 'services', 'cat'=> '4' );

		 $the_query = new WP_Query( $args ); 

		 ?>	

		 	<div class="col-12 p-0">
                     <h2 class="service-main-head">
                        Heating Services
                     </h2>
            </div>


            <div class="row">
            	<!-- loop will be in this row -->

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