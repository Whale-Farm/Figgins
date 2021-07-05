<?php
/**
 * The template for displaying all single posts
 *
 * Figgins
 */

get_header();

?>



<section class="banner-sect">
   <div class="container">
      <div class="row">
         <h1 class="page-head"><?php the_title();?></h1>
      </div>
   </div>
</section>


<div class="main-content single-post"> 
      <div class="container">

      	<div class="row">
      		
      		<?php
      		    // TO SHOW THE PAGE CONTENTS
      		    while ( have_posts() ) : the_post(); ?> <!--Because the_content() works only inside a WP Loop -->
      		        
      		     <?php the_content(); ?>   <!-- Page Content -->
      		


      		        <!-- Table content -->
      		        <!-- I have made a custom field for the table content and fetching here for only
      		        those who have that field filled -->

      		        
      		            
      		            
      		            <?php if(!empty(get_field( "table_content" ) )){ ?>

      		            <div class="row  tuneup-table">

      		            <?php	echo get_field( "table_content" ); ?>
      		            
      		            </div>	

      		            <?php };?>


      		    <?php
      		    endwhile; //resetting the page loop
      		    wp_reset_query(); //resetting the page query
      		    ?>  



      	</div>

      </div>
</div>      

<?php 

get_footer();
