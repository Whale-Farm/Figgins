<?php
/**
 * The template for displaying all single pages
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


<div class="main-content single-page"> 
      <div class="container">

      	<div class="row">
      		
      		<?php
      		    // TO SHOW THE PAGE CONTENTS
      		    while ( have_posts() ) : the_post(); ?> <!--Because the_content() works only inside a WP Loop -->
      		        
      		        <p>    <?php the_content(); ?> </p> <!-- Page Content -->
      		

      		    <?php
      		    endwhile; //resetting the page loop
      		    wp_reset_query(); //resetting the page query
      		    ?>  



      	</div>

      </div>
</div>      

<?php 

get_footer();
