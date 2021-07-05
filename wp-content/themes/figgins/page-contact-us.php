<?php

/**
* Contact Us Template File
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

<div class="main-content contact-main">

	<section class="text-icons-sect">

		<div class="container">

			 <div class="row">

			 	<div class="col-12">
			 	   <p class="contact-para text-center">

			 	   	<?php $contact_page_data = get_post_meta($post->ID); ?>

			 	   	<?php $contact_intro_block = $contact_page_data['contact_page_intro_block_content'][0]; ?>

			 	   	

			 	   <!-- 	This content is present in the custom field on contact us page:
			 	   	- contact_page_intro_block_content -->

			 	      <!-- Lorem, ipsum dolor sit amet consectetur, adipisicing elit. Repellat nam iure quod pariatur id numquam incidunt tempore veniam qui placeat. <br>
			 	      Lorem ipsum dolor sit, amet consectetur adipisicing elit. Magni, fuga doloribus odio dolorem natus sint cupiditate dolores quam nostrum facere. -->

			 	      <?php echo $contact_intro_block; ?>


			 	   </p>
			 	</div>

			 	<div class="col-12 address-icons text-center mt-5">

			 		 <div class="row">


			 		 	<?php
			 	   	    // TO SHOW THE PAGE CONTENTS
			 	   	    while ( have_posts() ) : the_post(); ?> <!--Because the_content() works only inside a WP Loop -->
			 	   	        
			 	   	            <?php the_content(); ?> <!-- Page Content -->
			 	   	

			 	   	    <?php
			 	   	    endwhile; //resetting the page loop
			 	   	    wp_reset_query(); //resetting the page query
			 	   	    ?>  

			 		 	<!-- <div class="col-md-4 contact-addr mb-4 mb-md-0">
                           <p class="contct-p-head"><i class="fa fa-map-marker"></i> Address</p>
                           <p> 212, Prospect Eve, Brooklyn, New Yourk United State </p>
                        </div>

                        <div class="col-md-4 contact-phone mb-4 mb-md-0">
                           <p class="contct-p-head">
                              <i class="fa fa-phone"></i> Phone
                           </p>
                           <p>
                              <a href="tel:+1-8000-8000">
                                 +1-8000-8000 
                           </p>
                        </div>

                         <div class="col-md-4 contact-email mb-4 mb-md-0">
                        <p class="contct-p-head"><i class="fa fa-envelope"></i> Email</p>
                        <p>  <a href="info@figgins.com">info@figgins.com</a> </p>
                        </div> -->



			 		 </div>
			 		 

			 	</div>	





			 </div>	

		</div>
			
	</section>	

	 
	

</div>	





<?php  

get_footer();