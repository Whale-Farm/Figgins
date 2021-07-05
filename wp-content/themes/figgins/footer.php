      <?php


 /**

 *
 * Footer Template
 *
 * @package Figgins

 */

 ?>


  <!-- ====== Contact Us Section ====== -->
      <section class="help-section cntct-sect"  >
            <div class="container">
               <div class="row">


                  <!-- it uses a form name Free Estimate Form -->
                  <!-- Shortcode data is present in functions.php -->

                  <?php  echo do_shortcode('[freeEstimateForm]'); ?>


                   <!-- <div class="col-12 about-help-block mt-5">
                     <h2 class="section-title text-center mt-4"> We'd Love to Help </h2>
                     <p class="text-center pb-5">
                        We would love to help our people in every condition regardless of the factors involved.
                        <br>
                        Please let us know the problem and get it fixed.
                     </p>
                     <div class="row">
                        <div class="col-12  figgins-contact-form">

                            <?php //echo do_shortcode('[contact-form-7 id="39" title="Free Estimate Form"]'); ?>


                        </div>
                     </div>      
                 </div>  -->   
               </div>
            </div>
     </section>          



     <footer id="footer">
         <div class="container">
            <div class="row">
               <div class="col-12 ">

                  <?php 
                    $args= array(
                        'theme_location'  => 'footer-menu',
                        'menu'            => '',
                        'container'       => '',
                        'container_class' => false,
                        'container_id'    => '',
                        'menu_class'      => ' nav justify-content-center footer-ul',
                        'menu_id'         => ' ',
                        'echo'            => false,
                        'fallback_cb'     => 'fall_back_menu',
                        'before'          => '',
                        'after'           => '',
                        'link_before'     => '',
                        'link_after'      => '',
                        'depth'           => 0,
                        'walker'          => ''
                    );

                  echo wp_nav_menu( $args );
                    

                  ?> 

               </div>
               <div class="col-12 footer-logo text-center mt-5 pt-4">
                  <img src="<?php echo get_template_directory_uri();?>/images/footer-logo.png" alt="" >
               </div>
            </div>
            <div class="row footer-address mt-3">
               <?php if ( is_active_sidebar( 'footer_addr_phn' ) ) : 
                  
                  dynamic_sidebar( 'footer_addr_phn' );
                  
               endif; ?>
               
            </div>
            <div class="row ">
               <div class="footer-social-icons  ">

                  <?php if ( is_active_sidebar( 'footer_social' ) ) : 
                     
                     dynamic_sidebar( 'footer_social' );
                     
                  endif; ?> 
                  
               </div>
            </div>
         </div>
         <div class="container-fuild ">
            <div class="row pt-2 copyright-main-div text-center">
               <!-- <div class="col-12">
                  <p> Day Heating · CCB 1090 </p>
               </div> -->
               <div class="col-12 copyright-text">
                  <?php if ( is_active_sidebar( 'copyright_text' ) ) : 
                     
                     dynamic_sidebar( 'copyright_text' );
                     
                  endif; ?>
                <!--   <p>2021 All Rights Reserved. <a href="">Figgins Heating and Air  </a></p> -->
               </div>
            </div>
         </div>
      </footer>
      <script src="<?php echo get_template_directory_uri();?>/js/jquery-3.5.slim.min.js"  ></script> 
      <script src="<?php echo get_template_directory_uri();?>/js/popper.min.js"  ></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
      <script src="<?php echo get_template_directory_uri();?>/js/bootstrap.min.js"  ></script>   
      <script src="<?php echo get_template_directory_uri();?>/js/jquery-ui.min.js"  ></script>   
      <script src="<?php echo get_template_directory_uri();?>/js/bootnavbar.js" ></script>   
      <script src="<?php echo get_template_directory_uri();?>/js/timepicker.js"  ></script>   
      <!-- ==== Carousal  -->
      <script src="<?php echo get_template_directory_uri();?>/js/owl.carousel.min.js"></script>
      <script src="<?php echo get_template_directory_uri();?>/js/custom-js.js"></script> 

      <script type="text/javascript">

        $( document ).ready(function() { 
       
         // pixel trigger on form submit


        $('form.wpcf7-form').submit(function(){
           
            // alert("form submit");

            fbq('track', 'Lead'); 

         }); 

         // pixel trigger on phone click

         
        $('.pixel-phone').click(function(){
           
            // alert("phoe pixel");

            fbq('track', 'Contact'); 

         }); 


         // pixel trigger on button click

         
        $('.donate-btn').click(function(){
           
            // alert("form submit");

            fbq('track', 'Search');

         }); 




        });
      </script>

   </body>
</html>