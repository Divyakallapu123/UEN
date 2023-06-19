<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package WordPress
 * @subpackage Twenty_Twenty_One
 * @since Twenty Twenty-One 1.0
 */

?>



      <!-- NEWSLATTER SECTION STARTS -->
           
	  <section class="newslatter-sec">
                   <div class="container">
                     <div class="row">
                         <div class="col-md-5">
                                <h2 class="newsletter"><?php echo get_field('newsletter_title',65) ?></h2>
                                <p class="stay mb-2"><?php echo get_field('newsletter_content',65) ?></p>
                         </div>
                         <?php //echo do_shortcode('[email-subscribers-form id="1"]'); ?>
                         <div class="col-md-7" id="subscribe">
                         <div class="emaillist" id="es_form_f1-n1">
                            <form action="" method="post" class="es_subscription_form es_shortcode_form  es_ajax_subscription_form" id="es_subscription_form_648320ca445bb" data-source="ig-es" data-form-id="1">
                                <input type="hidden" name="esfpx_form_id" value="1"><input type="hidden" name="esfpx_lists[]" value="ff57cffc2ff4"><input type="hidden" name="es" value="subscribe">
                                <input type="hidden" name="esfpx_es_form_identifier" value="f1-n1">
                                <input type="hidden" name="esfpx_es_email_page" value="13">
                                <input type="hidden" name="esfpx_es_email_page_url" value="http://localhost/UEN/">
                                <input type="hidden" name="esfpx_status" value="Unconfirmed">
                                <input type="hidden" name="esfpx_es-subscribe" id="es-subscribe-648320ca445bb" value="23ea78a92a">
                                <label style="position:absolute;top:-99999px;left:-99999px;z-index:-99;" aria-hidden="true"><span hidden="">Please leave this field empty.</span><input type="email" name="esfpx_es_hp_email" class="es_required_field" tabindex="-1" autocomplete="-1" value=""></label>
                                <style>* { box-sizing: border-box; } body {margin: 0;}form[data-form-id="1"] .es-form-field-container .gjs-row{display:flex;justify-content:flex-start;align-items:stretch;flex-wrap:nowrap;}form[data-form-id="1"] .es-form-field-container .gjs-cell{flex-grow:1;flex-basis:100%;}form[data-form-id="1"] .es-form-field-container .gjs-cell[data-highlightable="1"]:empty{border-top-width:1px;border-right-width:1px;border-bottom-width:1px;border-left-width:1px;border-top-style:dashed;border-right-style:dashed;border-bottom-style:dashed;border-left-style:dashed;border-top-color:rgb(204, 204, 204);border-right-color:rgb(204, 204, 204);border-bottom-color:rgb(204, 204, 204);border-left-color:rgb(204, 204, 204);border-image-source:initial;border-image-slice:initial;border-image-width:initial;border-image-outset:initial;border-image-repeat:initial;height:30px;}form[data-form-id="1"] .es-form-field-container .gjs-row .gjs-cell input[type="checkbox"], form[data-form-id="1"] .es-form-field-container .gjs-row .gjs-cell input[type="radio"]{margin-top:0px;margin-right:5px;margin-bottom:0px;margin-left:0px;width:auto;}form[data-form-id="1"] .es-form-field-container .gjs-row{margin-bottom:0.6em;}form[data-form-id="1"] .es-form-field-container label.es-field-label{display:block;}@media (max-width: 320px){form[data-form-id="1"] .es-form-field-container{padding-top:1rem;padding-right:1rem;padding-bottom:1rem;padding-left:1rem;}}</style>
                          <!-- <form class=""> -->
                            <div class="form-group">
                              <label for="exampleInputEmail1" class="mb-3 mt-3 es-field-label">Email address</label>
                              <div class="row">
                                  <div class="col-md-7 mt-2">
                                    <input type="email" class="form-control mb-3 mt-1 email-address es-email"  id="esfpx_email_0fe74ada6116e" name="esfpx_email" autocomplete="off" placeholder="Enter your email">
                                  </div>
                                  <div class="col-md-5">
                                    <button type="submit" class="btn btn-primary button" name="submit">SING UP</button>
                                  </div>
                              </div>
                            </div>
                            <!-- <span class="es_spinner_image" id="spinner-image"><img src="http://localhost/UEN/wp-content/plugins/email-subscribers/lite/public/images/spinner.gif" alt="Loading"></span> -->
                          </form> 
                          <span class="es_subscription_message" id="es_subscription_message_648320ca445bb"></span>
                         </div>
                         </div>
                     </div>
                   </div>
               </section>

      <!-- NEWSLATTER SECTION ENDS -->

<footer class="footer-bgcolor">
     <div class="container">
          <div class="footer-contant">
             <h2 class="logo-footer"><?php echo get_field('footer_logo',65) ?></h2>
             <p class="magna"><?php echo get_field('footer_content',65) ?></p>
             <div class="footer-circleicon">
              <img src="<?php echo get_template_directory_uri(); ?>/assets/images/footer_circleicon.svg" class="img-fluid circleicon" alt="">
              <img src="<?php echo get_template_directory_uri(); ?>/assets/images/footer_circleicon.svg" class="img-fluid circleicon" alt="">
              <img src="<?php echo get_template_directory_uri(); ?>/assets/images/footer_circleicon.svg" class="img-fluid circleicon" alt="">
             </div>
            </div>
     </div>
   </footer>

    <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
    <script src="<?php echo get_template_directory_uri(); ?>/assets/js/jquery-3.4.1.js" ></script>
    <script src="<?php echo get_template_directory_uri(); ?>/assets/js/bootstrap.bundle.min.js"></script>
    <script src="<?php echo get_template_directory_uri(); ?>/assets/js/bootstrapValidator.min.js"></script>
    <script src="<?php echo get_template_directory_uri(); ?>/assets/js/wow.min.js"></script>
    <script src="<?php echo get_template_directory_uri(); ?>/assets/js/custom.js"></script>
    <script src="<?php echo get_template_directory_uri(); ?>/assets/js/swiper-bundle.min.js"></script>
    
   <?php wp_footer(); ?>

</body>
</html>