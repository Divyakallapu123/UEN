<?php
/**
 * Template Name: contact page
 * The main template file
 *
 * This is the most generic template file in a WordPress theme
 * and one of the two required files for a theme (the other being style.css).
 * It is used to display a page when nothing more specific matches a query.
 * E.g., it puts together the home page when no home.php file exists.
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package WordPress
 * @subpackage Twenty_Twenty_One
 * @since Twenty Twenty-One 1.0
 */
?>
<!doctype html>
<html lang="en">
  <head>
  <?php  get_header() ?>
 </head>
  <body>
<!-- HEADER SECTION -->
<header>
        <?php include("inc/nav.php");?>
        <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/assets/css/contact.css">
            <?php $category = isset($_GET['cat']) ? $_GET['cat'] : "all"; ?>
</header>
<!-- HEADER SECTION ENDS-->

<!-- CONTACT SECTION STARTS -->
        <section class="contact-sec">
            <div>
                <div class="row">
                    <div class="col-md-5">
                        <img src="<?php echo get_field('contact_image');?>" class="img-fluid" alt="">
                    </div>
                    <div class="col-md-7">
                        <div class="d-flex contact-content">
                            <h2 class="contact"><?php echo get_field('contact_title');?></h2>
                            <div class="thin_line"></div>
                          </div>
                          <?php //echo do_shortcode('[contact-form-7 id="6" title="Contact form 1"]');?>
                        <div class="contact-container">
                            <div class="wpcf7 js" id="wpcf7-f6-o1" lang="en-US" dir="ltr">
                                    <div class="screen-reader-response">
                                        <p role="status" aria-live="polite" aria-atomic="true"></p>
                                        <ul></ul>
                                    </div>
                                <form action="/UEN/contact/#wpcf7-f6-o1" class="needs-validation formValidation" method="post" class="wpcf7-form init" aria-label="Contact form" novalidate="novalidate" data-status="init">
                                    <div style="display: none;">
                                        <input type="hidden" name="_wpcf7" value="6">
                                        <input type="hidden" name="_wpcf7_version" value="5.7.7">
                                        <input type="hidden" name="_wpcf7_locale" value="en_US">
                                        <input type="hidden" name="_wpcf7_unit_tag" value="wpcf7-f6-o1">
                                        <input type="hidden" name="_wpcf7_container_post" value="0">
                                        <input type="hidden" name="_wpcf7_posted_data_hash" value="">
                                    </div>
                                <div class="form-row">
                                  <div class="form-group col-md-6 mb-3">
                                    <label for="FirstName" class="first-name">First name</label>
                                    <input type="text" class="form-control" name="fname" id="FirstName" required data-bv-notempty-message="Please enter firstname">  
                                  </div>
                                
                                  <div class="form-group col-md-6 mb-3">
                                    <label for="LastName" class="first-name">Last name</label>
                                    <input type="text" class="form-control" name="lname" id="LastName" required data-bv-notempty-message="Please enter LastName">
                                    </div>
                                    <div class="form-group col-md-6 mb-3">
                                        <label for="Email" class="first-name">Email</label>
                                        <input type="email" class="form-control" name="email" id="Email" required data-bv-notempty-message="Please enter Email">
                                      </div>
                                      <div class="form-group col-md-6 mb-3">
                                        <label for="PhoneNumber" class="first-name">Phone Number</label>
                                        <input type="tel" class="form-control"  name="tel" id="PhoneNumber" required data-bv-notempty-message="Please enter Phone Number">
                                      </div>      
                                      <div class="form-group col-md-12 mb-3">
                                        <label for="inputmessage4" class="message-text">message</label>
                                        <textarea class="form-control message" name="message" rows="5" placeholder="Message"  id="inputmessage4" required data-bv-notempty-message="Please enter text"></textarea>
                                        <!-- <textarea  class="message" name="message" id="inputmessage4" required data-bv-notempty-message="Please enter text"></textarea>   -->
                                      </div> 
                                        <div class="submit-form">
                                          <button class="btn btn-primary wpcf7-submit" type="submit">Submit form</button>
                                        </div>                                
                                  </div>
                                  <div class="wpcf7-response-output" aria-hidden="true"></div>
                                </form>
                             </div>
                              </div>
                             </div>
                                
                        </div>
                        
                    </div>
        </section>
<!-- CONTACT SECTION ENDS -->


<!-- FOOTERS STARTS -->
        <?php get_footer() ?>
<!-- FOOTER ENDS -->
<!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->

</body>
</html>