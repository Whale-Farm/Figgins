<?php

/**
* About Us Template File
*

* @package Figgins

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

<div class="main-content about-page">
   <section class="about-page-content">
      <div class="container">

      	<div class="row">
      	   <div class="col-12 history-block">

      	   	<?php
      	   	    // TO SHOW THE PAGE CONTENTS
      	   	    while ( have_posts() ) : the_post(); ?> <!--Because the_content() works only inside a WP Loop -->
      	   	        
      	   	            <?php the_content(); ?> <!-- Page Content -->
      	   	

      	   	    <?php
      	   	    endwhile; //resetting the page loop
      	   	    wp_reset_query(); //resetting the page query
      	   	    ?>  
      	      <!-- <h2 class="section-title"> Our Story</h2>
      	      <p>
      	         Figgins Heating & Air was founded in 1962 by Boyd Figgins under the original name Figgins Heating and Cooling. Boyd started this family owned heating and sheet metal shop to provide honest and fair service to his Utah customers. Barry L. Figgins continued in his father’s footsteps and ran the family business under the name of Conditioned Air by Figgins. In the early 1980’s Barry began training his second son, Todd C. Figgins in the HVAC trade. At the age of twelve, Todd was able to run heating ducts independently.
      	      </p>
      	      <p>
      	         Throughout the years Todd has worked with several superb HVAC companies, but has again returned to his roots. Figgins Heating & Air was reborn and still operates on the same foundation of honesty and integrity that has been handed down through the generations.
      	      </p>
 -->      	   </div>
      	</div>

      	<div class="row">
      	   <div class="col-12 figgin-difference-block mt-5">


      	   	<!-- The content of this section is present in the custom field of about us page:
      	   	- about_figgin_difference_block_content -->

      	   	 <?php $about_page_data = get_post_meta($post->ID); ?>

            <?php $about_difference_block = $about_page_data['about_figgin_difference_block_content'][0]; ?>

            <?php echo $about_difference_block; ?>

      	      <!-- <h2 class="section-title"> The Figgins Difference</h2>
      	      <p>
      	         Todd Figgins, owner of Figgins Heating and Air, has 35 years of personal experience in HVAC service. He takes sincere pride in his craftsmanship and is uniquely talented at maintenance and repair of home comfort systems. We keep prices fair while giving you excellent service. 
      	      </p> -->
      	   </div>
      	</div>



      </div>
    </section>


     
</div>      	


<?php  

get_footer();