<?php

/**
* FAQ Template File
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


<div class="main-content faq-main">

	 <section class="faq-content-sect">

	 	<div class="container">

	 		 <div class="row">

	 		 	<div class="col-12">

	 		 		<?php 
	 		 		$args = array( 'post_type' => 'faqs', 'posts_per_page' => -1 );
	 		 		$the_query = new WP_Query( $args ); 

	 		 		$idCounter = 1;

	 		 		?> 

	 		 		<div class="panel-group" id="accordion">

	 		 			<!-- <div class="faqHeader mb-4">General questions</div> -->

	 		 			<?php if ( $the_query->have_posts() ) : ?>

	 		 			            <?php while ( $the_query->have_posts() ) : $the_query->the_post(); ?>


 
	 		 			 <div class="panel panel-default">
	 		 			    <div class="panel-heading">
	 		 			       <h4 class="panel-title">
	 		 			          <a class="accordion-toggle collapsed " data-toggle="collapse"
	 		 			          data-parent="#accordion" 
	 		 			          href="#collapse-<?php echo $idCounter;?>">
	 		 			          <?php the_title(); ?>
	 		 			          	
	 		 			          </a>
	 		 			       </h4>
	 		 			    </div>
	 		 			    <div id="collapse-<?php echo $idCounter; ?>" class="panel-collapse collapse in">
	 		 			       <div class="panel-body">
	 		 			          <?php the_content();?> 

	 		 			          <?php $idCounter = $idCounter +1;?>
	 		 			       </div>
	 		 			    </div>
	 		 			 </div>





	 		 			

	 		 			<?php endwhile;
	 		 			wp_reset_postdata(); ?>
	 		 			<?php else:  ?>
	 		 			<p><?php _e( 'Sorry, no posts matched your criteria.' ); ?></p>
	 		 			<?php endif; ?>              	



	 		 		</div>	

	 		 	</div>	

	 		 </div>	

	 	</div>	

	 </section>	

</div>






<?php  

get_footer();