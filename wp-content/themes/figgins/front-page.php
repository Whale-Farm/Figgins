<?php

/**
* Main Template File
*

* @package Figgins

*/


get_header();

?> 


 <div class="main home-main">

  <section class="slogan-section">
     <div class="container">
        <div class="row">
           <div class="col">
            <?php $home_page_data = get_post_meta($post->ID); ?>

            <?php $home_top_notice = $home_page_data['home_header_notice'][0]; ?>

            <?php echo $home_top_notice; ?>
              <!-- <h4>
                 We are open, but our offices are temporarily closed.
              </h4>
              <p>
                 Filters sales can still be placed over the phone & picked up.
              </p>
              <p>
                 <a href="tel:+1-3000-30000">Please Give Us Call </a>
              </p> -->
           </div>
        </div>
     </div>
  </section>

  <section class="banner-area">
     <div class="container">
        <div class="row">
           <h1 class="banner-head">
             <!--  Figgins can <br> fix it. --> 

             <?php
                 // TO SHOW THE PAGE CONTENTS
                 while ( have_posts() ) : the_post(); ?> <!--Because the_content() works only inside a WP Loop -->
                     
                         <?php the_content(); ?> <!-- Page Content -->
             

                 <?php
                 endwhile; //resetting the page loop
                 wp_reset_query(); //resetting the page query
                 ?>  


           </h1>
        </div>
     </div>
  </section>

  <!-- ============= Services Section ================ -->
  <section id="home-services" class="service-home-section">
     <div class="container">

      <div class="row">
         <div class="col text-center p-md-5 pt-5">
            <h2 class="section-head  "> Services</h2>
         </div>
      </div>

      <?php 
      $args = array( 'post_type' => 'services', 'posts_per_page' => 8 );
      $the_query = new WP_Query( $args ); 
      ?> 


      <div class="row home-service-content-main">

         <?php if ( $the_query->have_posts() ) : ?>

                     <?php while ( $the_query->have_posts() ) : $the_query->the_post(); ?>


                      <?php $service_featured_img_url = get_the_post_thumbnail_url($post->ID); ?>


                  
           <div class="col-lg-3 col-md-4 col-sm-6 mt-md-0 mt-5 single-service">
              <div class="card p-1">
                 <a href="<?php the_permalink( );?>"> 
                 <img src="<?php echo $service_featured_img_url; ?>" class="card-img-top img-fluid" alt="">
                 </a>
                 <div class="card-body px-2 pb-0">
                    <a href="<?php the_permalink( );?>" class="service-title">
                       <h4 class="card-title">

                        <?php the_title(); ?>


                       </h4>
                    </a>
                    <div class="service-overview mt-2 pt-3 border-top">
                       <p>
                      <?php  echo wp_trim_words( get_the_content(), 15, '...' ); ?>
                       </p>
                    </div>
                 </div>
              </div>
           </div>           


                     


         <?php endwhile;
         wp_reset_postdata(); ?>
         <?php else:  ?>
         <p><?php _e( 'Sorry, no posts matched your criteria.' ); ?></p>
         <?php endif; ?>               



      </div>


      <div class="col text-center mt-3">
        <a href="#" class="see-more btn donate-btn ">Schedule an appointment</a>
      </div>

     </div> <!-- container ends -->

   </section>  



   <!-- =============== Selling points section ===============  -->
      <section class="selling-points my-5">

         <div class="container">


          <?php 

          $args = array( 'post_type' => 'why_figgins', 'posts_per_page' => 4 );

          $the_query = new WP_Query( $args ); 

          ?>

          <div class="section-title text-center">

             <h2 class="section-head pb-5">Why Figgins?</h2>

          </div>


          <div class="row">


            <?php if ( $the_query->have_posts() ) : ?>

               <?php while ( $the_query->have_posts() ) : $the_query->the_post(); ?>

                <?php $post_img_url = get_the_post_thumbnail_url($post->ID);?>


              
              <div class=" col-md-4 col-sm-6 mb-3" data-aos="fade-up">
                 <div class="selling-box">
                    <div class="selling-icon"> 
                       <a href="<?php the_permalink( );?>">
                       <!-- <i class="fa fa-map-marker"></i> -->
                       <img src="<?php echo $post_img_url ;?>" alt="" class="selling-pt-img">
                       </a>
                    </div>
                    <a href="<?php the_permalink( );?>" class="selling-title">

                    <?php the_title(); ?>

                    </a> 
                    <!-- <p> 

                      <?php  //echo wp_trim_words( get_the_content(), 10, '...' ); ?>

                    </p> -->
                 </div>
              </div>








           <?php endwhile;
           wp_reset_postdata(); ?>
           <?php else:  ?>
           <p><?php _e( 'Sorry, no posts matched your criteria.' ); ?></p>
           <?php endif; ?>   




            <div class="col text-center mt-3">

              <a href="#" class="see-more btn donate-btn ">Schedule an appointment</a>

            </div>


            

           </div> <!-- Row ends here --> 


         </div>

      </section>   



     











 </div> 

 
<?php  

get_footer();