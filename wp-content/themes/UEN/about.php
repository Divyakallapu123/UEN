<?php
/**
 * Template Name: about page
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

 <!-- HEADER SECTION -->
 <header>
 <?php include("inc/nav.php");?>
    <?php $category = isset($_GET['cat']) ? $_GET['cat'] : "all"; ?>
</header>
<!-- HEADER SECTION ENDS-->

<!-- ABOUT SECTION STARTS -->
        
         <section class="about-sec">
            <div class="container">
                <div class="d-flex">
                    <h2 class="about"><?php echo get_field('about_title'); ?></h2>
                    <div class="thin_line"></div>
                  </div>
                  <div>
                    <img src="<?php echo get_field('about_banner_image'); ?>" class="img-fluid about_bannerimg" alt="">
                  </div>
                  <div class="mt-5">
                    <h3 class="lorem-about"><?php echo get_field('banner_title'); ?></h3>
                    <p class="lorempara-about"><?php echo get_field('banner_description'); ?></p>
                  </div>
            </div>
         </section>


<!-- ABOUT SECTION ENDS -->

<!-- VISION SECTION STARTS -->

      <section class="vision-sec">
        <div class="container">
             <div class="row">
             <?php  while (have_rows('vision')) : the_row(); ?>
                 <div class="col-md-6">
                    <div class="d-flex">
                        <h2 class="vision"><?php echo get_sub_field('vision_title'); ?></h2>
                        <div class="thin_line"></div>
                      </div>
                      <div class="vision-bgcolor">
                        <p class="lorem-vision"><?php echo get_sub_field('vision_description'); ?></p>
                      </div>   
                 </div>
                 <?php endwhile; ?>       
                 <!-- <div class="col-md-6">
                    <div class="d-flex">
                        <h2 class="mission">MISSION</h2>
                        <div class="thin_line"></div>
                      </div>
                      <div class="vision-bgcolor">
                        <p class="lorem-vision">Lorem ipsum dolor sit amet consectetur Lorem ipsum dolor sit amet consectetur. Ac magna massa Lorem ipsum dolor sit amet </p>
                 </div>  
                 </div> -->

             </div>
        </div>
      </section>


<!-- VISION SECTION ENDS -->


<!-- TEAM SECTION STARTS -->
       
     <section class="team-sec">
         <div class="container">
            <div class="d-flex">
                <h2 class="team">TEAM</h2>
                <div class="thin_line"></div>
              </div>
         </div>
         <div class="swiper-container position-relative">
            <div class="swiper-wrapper">
              <div class="swiper-slide">
                <div class="swiper-slide-container-categories">
                      <div class="row">
                          <div class="col-md-12">
                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/cheif-excutive.png" class="img-fluid combat_img" alt="">
                            <div class="d-flex jane-doe">
                                <h3 class="jane">JANE DOE</h3>
                                <p class="manager">(chief executive)</p>
                            </div>
                          </div>
                      </div>
                        
                </div>
                </div>
                <div class="swiper-slide">
                  <div class="swiper-slide-container-categories">
                        <div class="row">
                            <div class="col-md-12">
                              <img src="<?php echo get_template_directory_uri(); ?>/assets/images/manager.png" class="img-fluid combat_img" alt="">
                              <div class="d-flex jane-doe">
                                <h3 class="jane">JANE DOE</h3>
                                <p class="manager">(MANAGER)</p>
                            </div>
                            </div>
                        </div>
                          
                  </div>
                  </div>
                  <div class="swiper-slide">
                    <div class="swiper-slide-container-categories">
                          <div class="row">
                              <div class="col-md-12">
                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/john-cheifexcutive.png" class="img-fluid combat_img" alt="">
                                <div class="d-flex jane-doe">
                                    <h3 class="jane">JANE DOE</h3>
                                    <p class="manager">(chief executive)</p>
                                </div>
                              </div>
                          </div>
                            
                    </div>
                    </div>
                  <div class="swiper-slide">
                    <div class="swiper-slide-container-categories">
                          <div class="row">
                              <div class="col-md-12">
                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/manager.png" class="img-fluid combat_img" alt="">
                                <div class="d-flex jane-doe">
                                    <h3 class="jane">JANE DOE</h3>
                                    <p class="manager">(MANAGER)</p>
                                </div>
                              </div>
                          </div>
                            
                    </div>
                    </div>
                    <div class="swiper-slide">
                      <div class="swiper-slide-container-categories">
                            <div class="row">
                                <div class="col-md-12">
                                  <img src="<?php echo get_template_directory_uri(); ?>/assets/images/cheif-excutive.png" class="img-fluid combat_img" alt="">
                                  <div class="d-flex jane-doe">
                                    <h3 class="jane">JANE DOE</h3>
                                    <p class="manager">(chief executive)</p>
                                </div>
                                </div>
                            </div>
                              
                      </div>
                      </div>
                      <div class="swiper-slide">
                        <div class="swiper-slide-container-categories">
                              <div class="row">
                                  <div class="col-md-12">
                                    <img src="<?php echo get_template_directory_uri(); ?>/assets/images/manager.png" class="img-fluid combat_img" alt="">
                                    <div class="d-flex jane-doe">
                                        <h3 class="jane">JANE DOE</h3>
                                        <p class="manager">(MANAGER)</p>
                                    </div>
                                  </div>
                              </div>
                                
                        </div>
                        </div>
                        <div class="swiper-slide">
                          <div class="swiper-slide-container-categories">
                                <div class="row">
                                    <div class="col-md-12">
                                      <img src="<?php echo get_template_directory_uri(); ?>/assets/images/manager.png" class="img-fluid combat_img" alt="">
                                      <div class="d-flex jane-doe">
                                        <h3 class="jane">JANE DOE</h3>
                                        <p class="manager">(chief executive)</p>
                                    </div>
                                    </div>
                                </div>
                                  
                          </div>
                          </div>
              
            </div>
            <!-- Add Pagination -->
            <div class="swiper-pagination"></div>
              <div class="swiper-button-next"><img src="<?php echo get_template_directory_uri(); ?>/assets/images/next_arrow.svg" class="img-fluid next_arrow" alt=""></div>
              <div class="swiper-button-prev"> <img src="<?php echo get_template_directory_uri(); ?>/assets/images/next_arrow.svg" class="img-fluid prev_arrow" alt=""> </div>
            
          </div>
     </section>

<!-- TEAM SECTION ENDS -->  

    

<!-- FEATURED SECTION STARTS -->

<section class="featured-sec">
    <div class="container">
        <div class="d-flex">
            <h2 class="about">FEATURED</h2>
            <div class="thin_line"></div>
          </div>
          <div class="card-deck">
            <div class="row">
              <div class="col-md-4 mb-5 cards">
                <div class="card">
                  <img src="<?php echo get_template_directory_uri(); ?>/assets/images/featured1_img.png" class="card-img-top featured1_img" alt="...">
                  <div class="card-body cardbg-color">
                    <h5 class="card-title">Category</h5>
                    <p class="card-text lorem-ipsum">Lorem ipsum dolor sit</p>
                    <p class="card-text lorem-para">Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.</p>
                     <a class="card-text read-more mt-3 mb-3" href="">Read more</a>                   
                  </div>
                </div>
              </div>
              <div class="col-md-4 mb-5 cards">
                <div class="card">
                  <img src="<?php echo get_template_directory_uri(); ?>/assets/images/featured2_img.png" class="card-img-top featured1_img" alt="...">
                  <div class="card-body cardbg-color">
                    <h5 class="card-title">Category</h5>
                    <p class="card-text lorem-ipsum">Lorem ipsum dolor sit</p>
                    <p class="card-text lorem-para">Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.</p>
                     <a class="card-text read-more mt-3 mb-3" href="">Read more</a>                   
                  </div>
                </div>
              </div>
              <div class="col-md-4 mb-5 cards">
                <div class="card">
                  <img src="<?php echo get_template_directory_uri(); ?>/assets/images/featured3_img.png" class="card-img-top featured1_img" alt="...">
                  <div class="card-body cardbg-color">
                    <h5 class="card-title">Category</h5>
                    <p class="card-text lorem-ipsum">Lorem ipsum dolor sit</p>
                    <p class="card-text lorem-para">Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.</p>
                     <a class="card-text read-more mt-3 mb-3" href="">Read more</a>                   
                  </div>
                </div>
              </div>
              <div class="col-md-4 mb-3 cards">
                <div class="card">
                  <img src="<?php echo get_template_directory_uri(); ?>/assets/images/featured4_img.png" class="card-img-top featured1_img" alt="...">
                  <div class="card-body cardbg-color">
                    <h5 class="card-title">Category</h5>
                    <p class="card-text lorem-ipsum">Lorem ipsum dolor sit</p>
                    <p class="card-text lorem-para">Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.</p>
                     <a class="card-text read-more mt-3 mb-3" href="">Read more</a>                   
                  </div>
                </div>
              </div>
              <div class="col-md-4 mb-3 cards">
                <div class="card">
                  <img src="<?php echo get_template_directory_uri(); ?>/assets/images/featured5_img.png" class="card-img-top featured1_img" alt="...">
                  <div class="card-body cardbg-color">
                    <h5 class="card-title">Category</h5>
                    <p class="card-text lorem-ipsum">Lorem ipsum dolor sit</p>
                    <p class="card-text lorem-para">Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.</p>
                     <a class="card-text read-more mt-3 mb-3" href="">Read more</a>                   
                  </div>
                </div>
              </div>
              <div class="col-md-4 mb-3 cards">
                <div class="card">
                  <img src="<?php echo get_template_directory_uri(); ?>/assets/images/featured6_img.png" class="card-img-top featured1_img" alt="...">
                  <div class="card-body cardbg-color">
                    <h5 class="card-title">Category</h5>
                    <p class="card-text lorem-ipsum">Lorem ipsum dolor sit</p>
                    <p class="card-text lorem-para">Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.</p>
                     <a class="card-text read-more mt-3 mb-3" href="">Read more</a>                   
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="view mt-3">
            <a class="view-all" href="">view all</a>
          </div>  
    </div>
 </section>

<!-- FEATURED SECTION ENDS -->


 <!-- CATEGORIES SECTION STARTS -->

 <section class="categories-sec">
    <div class="container">
      <div class="d-flex">
        <h2 class="categories">CATEGORIES</h2>
        <div class="thin_line"></div>
      </div>
    </div>
    <div class="swiper-container position-relative">
        <div class="swiper-wrapper">
          <div class="swiper-slide">
            <div class="swiper-slide-container-categories">
                  <div class="row">
                      <div class="col-md-12">
                        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/water_img.png" class="img-fluid combat_img" alt="">
                        <p class="combat">WATER</p>
                      </div>
                  </div>
                    
            </div>
            </div>
            <div class="swiper-slide">
              <div class="swiper-slide-container-categories">
                    <div class="row">
                        <div class="col-md-12">
                          <img src="<?php echo get_template_directory_uri(); ?>/assets/images/team_img.png" class="img-fluid combat_img" alt="">
                          <p class="combat">TEAM</p>
                        </div>
                    </div>
                      
              </div>
              </div>
              <div class="swiper-slide">
                <div class="swiper-slide-container-categories">
                      <div class="row">
                          <div class="col-md-12">
                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/individual_img.png" class="img-fluid combat_img" alt="">
                            <p class="combat">INDIVIDUAL</p>
                          </div>
                      </div>
                        
                </div>
                </div>
              <div class="swiper-slide">
                <div class="swiper-slide-container-categories">
                      <div class="row">
                          <div class="col-md-12">
                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/combat_img.png" class="img-fluid combat_img" alt="">
                            <p class="combat">INDIVIDUAL</p>
                          </div>
                      </div>
                        
                </div>
                </div>
                <div class="swiper-slide">
                  <div class="swiper-slide-container-categories">
                        <div class="row">
                            <div class="col-md-12">
                              <img src="<?php echo get_template_directory_uri(); ?>/assets/images/combat_img.png" class="img-fluid combat_img" alt="">
                              <p class="combat">Combat</p>
                            </div>
                        </div>
                          
                  </div>
                  </div>
                  <div class="swiper-slide">
                    <div class="swiper-slide-container-categories">
                          <div class="row">
                              <div class="col-md-12">
                                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/water_img.png" class="img-fluid combat_img" alt="">
                                <p class="combat">WATER</p>
                              </div>
                          </div>
                            
                    </div>
                    </div>
                    <div class="swiper-slide">
                      <div class="swiper-slide-container-categories">
                            <div class="row">
                                <div class="col-md-12">
                                  <img src="<?php echo get_template_directory_uri(); ?>/assets/images/combat_img.png" class="img-fluid combat_img" alt="">
                                  <p class="combat">INDIVIDUAL</p>
                                </div>
                            </div>
                              
                      </div>
                      </div>
          
        </div>
        <!-- Add Pagination -->
        <div class="swiper-pagination"></div>
          <div class="swiper-button-next"><img src="<?php echo get_template_directory_uri(); ?>/assets/images/next_arrow.svg" class="img-fluid next_arrow" alt=""></div>
          <div class="swiper-button-prev"> <img src="<?php echo get_template_directory_uri(); ?>/assets/images/next_arrow.svg" class="img-fluid prev_arrow" alt=""> </div>   
      </div>
      <div class="view">
        <a class="view-all" href="">view all</a>
      </div> 
   </section>

<!-- CATEGORIES SECTION ENDS -->

 <!-- NEWSLATTER SECTION STARTS -->
           
 <section class="newslatter-sec">
    <div class="container">
      <div class="row">
          <div class="col-md-5">
                 <h2 class="newsletter">Newsletter</h2>
                 <p class="stay mb-2">Stay up to date with all the latest news, updates, and exclusive content from our organization.</p>
          </div>
          <div class="col-md-7">
           <form class="formValidation">
             <div class="form-group">
               <label for="exampleInputEmail1" class="mb-3 mt-3">Email address</label>
               <div class="row">
                   <div class="col-md-7 mt-2">
                     <input type="email" class="form-control mb-3 mt-1 email-address" id="exampleInputEmail1" aria-describedby="emailHelp" name="email" placeholder="Email" required data-bv-notempty-message="Please enter email">
                   </div>
                   <div class="col-md-5">
                     <button type="submit" class="btn btn-primary button">BUTTON</button>
                   </div>
               </div>
             </div>
            
           </form> 
          </div>
      </div>
    </div>
</section>

<!-- NEWSLATTER SECTION ENDS -->


 <!-- FOOTERS STARTS -->
 <footer class="footer-bgcolor">
    <div class="container">
         <div class="footer-contant">
            <h2 class="logo-footer">LOGO</h2>
            <p class="magna">Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.</p>
            <div class="footer-circleicon">
             <img src="<?php echo get_template_directory_uri(); ?>/assets/images/footer_circleicon.svg" class="img-fluid circleicon" alt="">
             <img src="<?php echo get_template_directory_uri(); ?>/assets/images/footer_circleicon.svg" class="img-fluid circleicon" alt="">
             <img src="<?php echo get_template_directory_uri(); ?>/assets/images/footer_circleicon.svg" class="img-fluid circleicon" alt="">
            </div>
           </div>
    </div>
  </footer>
  <!-- FOOTER ENDS -->


 <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
 <script src="<?php echo get_template_directory_uri(); ?>/assets/js/jquery-3.4.1.js" ></script>
 <script src="<?php echo get_template_directory_uri(); ?>/assets/js/bootstrap.bundle.min.js"></script>
 <script src="<?php echo get_template_directory_uri(); ?>/assets/js/bootstrapValidator.min.js"></script>
 <script src="<?php echo get_template_directory_uri(); ?>/assets/js/wow.min.js"></script>
 <script src="<?php echo get_template_directory_uri(); ?>/assets/js/custom.js"></script>
 <script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>

</body>
</html>