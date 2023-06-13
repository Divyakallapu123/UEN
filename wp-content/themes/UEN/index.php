<?php
/**
 * Template Name: Home page
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
    <?php include("inc/nav.php");?>
    <?php $category = isset($_GET['cat']) ? $_GET['cat'] : "all"; ?>
<!-- HEADER SECTION ENDS-->

<!-- BANNER STARTS -->
      <section class="banner-sec">
          <video autoplay loop muted width="100%" class="video-bg" id="video_play">
              <source src="<?php echo get_field('banner_video'); ?>" type="video/webm" />
          </video>
      </section>
   <!-- BANNERS ENDS -->

   <!-- NORFOLK SECTION STARTS -->
          
          <section class="norfolk-sec">
              <div class="container">
                <div class="d-flex">
                  <h2 class="about"><?php echo get_field('about_title'); ?></h2>
                  <div class="thin_line"></div>
                </div>
                  <div class="row">
                      <div class="col-md-6 mb-3">
                          <h3 class="the-norfolk"><?php echo get_field('about_sub_title1'); ?><br><?php echo get_field('about_sub_title2'); ?></h3>
                          <p class="with"><?php echo get_field('about_content'); ?></p>
                      </div>
                      <div class="col-md-6 norfolk">
                           <div>
                              <img src="<?php echo get_field('about_image'); ?>" class="img-fluid norfolk_img" alt="">
                           </div>
                      </div>
                  </div>
              </div>
              <div class="swiper-container position-relative mt-5">
                <div class="swiper-wrapper">
                <?php while(have_rows('scores_section')): the_row(); ?>
                  <div class="swiper-slide">
                   <div class="swiper-slide-container">
                     <div class="row">
                         <div class="col-md-6 align-self-center">
                               <h2 class="score"><?php echo get_sub_field('score_number'); ?></h2>  
                               <p class="titans"><?php echo get_sub_field('team_name'); ?></p>
                         </div>
                         <div class="col-md-6">
                                <img src="<?php echo get_sub_field('team_logo'); ?>" class="img-fluid" alt="">
                         </div>
                     </div>
                   </div>
                  </div>
                  <?php  endwhile; ?>  
                  <!-- <div class="swiper-slide">
                    <div class="swiper-slide-container">
                      <div class="row">
                        <div class="col-md-6 align-self-center">
                              <h2 class="score"> 0-0</h2>  
                              <p class="titans">titans</p>
                        </div>
                        <div class="col-md-6">
                              <img src="<?php echo get_template_directory_uri(); ?>/assets/images/titans_img.svg" class="img-fluid" alt="">
                        </div>
                    </div>
                  </div></div>
                  <div class="swiper-slide">
                    <div class="swiper-slide-container">
                       <div class="row">
                           <div class="col-md-6 align-self-center">
                                 <h2 class="score"> 0-0</h2>  
                                 <p class="titans">PVAMU</p>
                           </div>
                           <div class="col-md-6">
                                  <img src="<?php echo get_template_directory_uri(); ?>/assets/images/pvamu_img.svg" class="img-fluid" alt="">
                           </div>
                       </div>
                    </div>
                    </div>
                    <div class="swiper-slide">
                      <div class="swiper-slide-container">
                        <div class="row">
                          <div class="col-md-6 align-self-center">
                                <h2 class="score"> 0-0</h2>  
                                <p class="titans">titans</p>
                          </div>
                          <div class="col-md-6">
                                 <img src="<?php echo get_template_directory_uri(); ?>/assets/images/titans_img.svg" class="img-fluid" alt="">
                          </div>
                      </div>
                      </div></div>
                    <div class="swiper-slide">
                      <div class="swiper-slide-container">
                         <div class="row">
                             <div class="col-md-6 align-self-center">
                                   <h2 class="score"> 0-0</h2>  
                                   <p class="titans">PVAMU</p>
                             </div>
                             <div class="col-md-6">
                                    <img src="<?php echo get_template_directory_uri(); ?>/assets/images/pvamu_img.svg" class="img-fluid" alt="">
                             </div>
                         </div>
                      </div>
                      </div>
                      <div class="swiper-slide">
                        <div class="swiper-slide-container">
                          <div class="row">
                            <div class="col-md-6 align-self-center">
                                  <h2 class="score"> 0-0</h2>  
                                  <p class="titans">titans</p>
                            </div>
                            <div class="col-md-6">
                                   <img src="<?php echo get_template_directory_uri(); ?>/assets/images/titans_img.svg" class="img-fluid" alt="">
                            </div>
                        </div>
                        </div></div>
                      <div class="swiper-slide">
                        <div class="swiper-slide-container">
                           <div class="row">
                               <div class="col-md-6 align-self-center">
                                     <h2 class="score"> 0-0</h2>  
                                     <p class="titans">PVAMU</p>
                               </div>
                               <div class="col-md-6">
                                      <img src="<?php echo get_template_directory_uri(); ?>/assets/images/pvamu_img.svg" class="img-fluid" alt="">
                               </div>
                           </div>
                        </div>
                        </div>
                        <div class="swiper-slide">
                          <div class="swiper-slide-container">
                            <div class="row">
                              <div class="col-md-6 align-self-center">
                                    <h2 class="score"> 0-0</h2>  
                                    <p class="titans">titans</p>
                              </div>
                              <div class="col-md-6">
                                     <img src="<?php echo get_template_directory_uri(); ?>/assets/images/titans_img.svg" class="img-fluid" alt="">
                              </div>
                          </div>
                          </div></div> -->
                  
                </div>
                <!-- Add Pagination -->
                <div class="swiper-pagination"></div>
                  <div class="swiper-button-next"><img src="<?php echo get_field('right_arrow'); ?>" class="img-fluid next_arrow" alt=""></div>
                  <div class="swiper-button-prev"> <img src="<?php echo get_field('left_arrow'); ?>" class="img-fluid prev_arrow" alt=""> </div>
                
              </div>
          </section>

   <!-- NORFOLK SECTION ENDS -->

          <!-- FEATURED SECTION STARTS  -->
    
          <section class="featured-sec">
            <div class="container">
              <div class="d-flex">
                <h2 class="featured"><?php echo get_field('featured_title',173);?></h2>
                <div class="thin_line"></div>
              </div>
              <div class="row mb-5"> 
              <?php
                    if ($category == "all") {
                        $args = array(
                            'post_type' => 'blogs',
                            'post_status' => 'publish',
                            'offset' => 0,
                            // 'page'=>1,
                            'order' => 'DESC',
                            'posts_per_page' => 1
                        );
                    } else {
                        $args = array(
                            'post_type' => 'blogs',
                            'post_status' => 'publish',
                            'offset' => 0,
                            // 'page'=>1,
                            'order' => 'DESC',
                            'posts_per_page' => 1,
                            'tax_query' => array(
                                array(
                                    'taxonomy' => 'blogs-category',
                                    'field'    => 'slug',
                                    'terms'    => $category,
                                )
                            )
                        );
                    }
        ?>
        <?php
        $the_query = new WP_Query($args);
        while ($the_query->have_posts()) : $the_query->the_post();
            $image = wp_get_attachment_image_src(get_post_thumbnail_id($post->ID), 'single-post-thumbnail');
            $trimTitle = wp_trim_words(get_the_title(), $num_words = 15);
            $shortdescription = wp_trim_words(get_the_content(), $num_words = 30);
            $terms = get_the_terms($post->ID, 'blogs-category');
             $nameTerm = $terms[0]->name;
        ?>
                 <div class="col-md-6 mb-5">
                        <img src="<?php echo $image[0]; ?>" class="img-fluid featured_img" alt="">
                        <h5 class="category"><?php echo $nameTerm; ?></h5>
                        <p class="lorem-ipsum"><?php echo $trimTitle; ?></p>
                        <p class="ac-magna"><?Php echo $shortdescription; ?></p>
                        <a class="read-more" href="<?php the_permalink(); ?>">Read more</a>     
                 </div>
                 <?php endwhile;
                   wp_reset_query();
               ?>          
                 <div class="col-md-6">
                      <div class="row">
                      <?php
                    if ($category == "all") {
                        $args = array(
                            'post_type' => 'blogs',
                            'post_status' => 'publish',
                            'offset' => 1,
                            // 'page'=>1,
                            'order' => 'DESC',
                            'posts_per_page' => 4
                        );
                    } else {
                        $args = array(
                            'post_type' => 'blogs',
                            'post_status' => 'publish',
                            'offset' => 1,
                            // 'page'=>1,
                            'order' => 'DESC',
                            'posts_per_page' => 4,
                            'tax_query' => array(
                                array(
                                    'taxonomy' => 'blogs-category',
                                    'field'    => 'slug',
                                    'terms'    => $category,
                                )
                            )
                        );
                    }
        ?>
        <?php
        $the_query = new WP_Query($args);
        while ($the_query->have_posts()) : $the_query->the_post();
            $image = wp_get_attachment_image_src(get_post_thumbnail_id($post->ID), 'single-post-thumbnail');
            $trimTitle = wp_trim_words(get_the_title(), $num_words = 15);
            $shortdescription = wp_trim_words(get_the_content(), $num_words = 30);
            $terms = get_the_terms($post->ID, 'blogs-category');
             $nameTerm = $terms[0]->name;
        ?>
                          <div class="col-md-4 mb-3">
                               <img src="<?php echo $image[0]; ?>" class="img-fluid featured_img1" alt="">
                          </div>
                          <div class="col-md-8 mb-5">
                                <h6 class="categor"><?php echo $nameTerm; ?></h6>
                                <p class="lorem-ipsumdolor"><?Php echo $shortdescription; ?></p>
                                <a class="read-more"href="<?php the_permalink(); ?>">Read more</a>
                          </div>
                          <!-- <div class="col-md-4 mb-3">
                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/featured_img2.svg" class="img-fluid featured_img1" alt="">
                          </div>
                          <div class="col-md-8 mb-5">
                                <h6 class="categor">Category</h6>
                                <p class="lorem-ipsumdolor">Lorem ipsum dolor sit amet consectet Lorem ipsum dolor sit amet </p>
                                <a class="read-more"href="">Read more</a>
                          </div>
                          <div class="col-md-4 mb-3">
                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/featured_img1.svg" class="img-fluid featured_img1" alt="">
                          </div>
                          <div class="col-md-8 mb-5">
                                <h6 class="categor">Category</h6>
                                <p class="lorem-ipsumdolor">Lorem ipsum dolor sit amet consectet Lorem ipsum dolor sit amet </p>
                                <a class="read-more"href="">Read more</a>
                          </div>
                          <div class="col-md-4 mb-3">
                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/featured_img2.svg" class="img-fluid featured_img1" alt="">
                          </div>
                          <div class="col-md-8">
                                <h6 class="categor">Category</h6>
                                <p class="lorem-ipsumdolor">Lorem ipsum dolor sit amet consectet Lorem ipsum dolor sit amet </p>
                                <a class="read-more"href="">Read more</a>
                          </div> -->


                          <?php endwhile;
                   wp_reset_query();
               ?>     
                      </div>
                 </div>
                 
              </div>
                <div class="card-deck">
                  <div class="row">
                  <?php
                    if ($category == "all") {
                        $args = array(
                            'post_type' => 'blogs',
                            'post_status' => 'publish',
                            'offset' => 5,
                            // 'page'=>1,
                            'order' => 'DESC',
                            'posts_per_page' => 6
                        );
                    } else {
                        $args = array(
                            'post_type' => 'blogs',
                            'post_status' => 'publish',
                            'offset' => 5,
                            // 'page'=>1,
                            'order' => 'DESC',
                            'posts_per_page' => 6,
                            'tax_query' => array(
                                array(
                                    'taxonomy' => 'blogs-category',
                                    'field'    => 'slug',
                                    'terms'    => $category,
                                )
                            )
                        );
                    }
        ?>
        <?php
        $the_query = new WP_Query($args);
        while ($the_query->have_posts()) : $the_query->the_post();
            $image = wp_get_attachment_image_src(get_post_thumbnail_id($post->ID), 'single-post-thumbnail');
            $trimTitle = wp_trim_words(get_the_title(), $num_words = 15);
            $shortdescription = wp_trim_words(get_the_content(), $num_words = 30);
            $terms = get_the_terms($post->ID, 'blogs-category');
             $nameTerm = $terms[0]->name;
        ?>
                    <div class="col-md-4 mb-5 cards">
                      <div class="card">
                        <img src="<?php echo $image[0]; ?>" class="card-img-top featured1_img" alt="...">
                        <div class="card-body cardbg-color">
                          <h5 class="card-title"><?php echo $nameTerm; ?></h5>
                          <p class="card-text lorem-ipsum"><?php echo $trimTitle; ?></p>
                          <p class="card-text lorem-para"><?Php echo $shortdescription; ?></p>
                           <a class="card-text read-more mt-3 mb-3" href="<?php the_permalink(); ?>">Read more</a>                   
                        </div>
                      </div>
                    </div>
                    <!-- <div class="col-md-4 mb-5 cards">
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
                    </div> -->
                    <?php endwhile;
                   wp_reset_query();
               ?>    
                  </div>
                </div>
                <div class="view mt-3">
                  <a class="view-all" href="">view all</a>
                </div>
            </div>     
        </section>

          <!-- FEATURED SECTION ENDS  -->


     <!-- EVENTS SECTION STARTS -->
   
     <section class="events-sec">
              <div class="container">
                <div class="d-flex">
                  <h2 class="events"><?php echo get_field('events_title',123); ?></h2>
                  <div class="thin_line"></div>
                </div>
                <div class="card-deck">
                  <div class="row">
                  <?php
        if ($category == "all") {
            $args = array(
                'post_type' => 'blogs',
                'post_status' => 'publish',
                'order' => 'ASC',
                'offset' => 1,
                // 'page'=>1,
                'posts_per_page' => 6,
            );
        } else {
            $args = array(
                'post_type' => 'blogs',
                'post_status' => 'publish',
                'order' => 'ASC',
                'offset' => 1,
                // 'page'=>1,
                'posts_per_page' => 6,
                'tax_query' => array(
                    array(
                        'taxonomy' => 'blogs-category',
                        'field'    => 'slug',
                        'terms'    => 'events',
                    )
                )
            );
        }
        ?>
        <?php
        $the_query = new WP_Query($args);
        while ($the_query->have_posts()) : $the_query->the_post();
            $image = wp_get_attachment_image_src(get_post_thumbnail_id($post->ID), 'single-post-thumbnail');
            $trimTitle = wp_trim_words(get_the_title(), $num_words = 15);
            $shortdescription = wp_trim_words(get_the_content(), $num_words = 30);
            $terms = get_the_terms($post->ID, 'blogs-category');
             $nameTerm = $terms[0]->name;
        ?>
                    <div class="col-md-4 mb-5 cards">
                      <div class="card">
                        <img src="<?php echo $image[0]; ?>" class="card-img-top featured1_img" alt="...">
                        <div class="card-body cardbg-color">
                          <h5 class="card-title"><?php echo $nameTerm; ?></h5>
                          <p class="card-text lorem-ipsum"><?php echo $trimTitle; ?></p>
                          <p class="card-text lorem-para"><?Php echo $shortdescription; ?></p>
                           <a class="card-text read-more mt-3 mb-3" href="<?php the_permalink(); ?>">Read more</a>                   
                        </div>
                      </div>
                    </div>
                    <!-- <div class="col-md-4 mb-5 cards">
                      <div class="card">
                        <img src="<?php //echo get_template_directory_uri(); ?>/assets/images/featured2_img.png" class="card-img-top featured1_img" alt="...">
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
                        <img src="<?php //echo get_template_directory_uri(); ?>/assets/images/featured3_img.png" class="card-img-top featured1_img" alt="...">
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
                        <img src="<?php //echo get_template_directory_uri(); ?>/assets/images/featured4_img.png" class="card-img-top featured1_img" alt="...">
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
                        <img src="<?php //echo get_template_directory_uri(); ?>/assets/images/featured5_img.png" class="card-img-top featured1_img" alt="...">
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
                    </div> -->
                    <?php endwhile;
                   wp_reset_query();
               ?> 
                  </div>
                </div>
                <div class="view mt-3">
                  <a class="view-all" href="">view all</a>
                </div>
              </div>
           </section>  
           

      <!-- EVENTS SECTION ENDS -->
      <!-- INDIVIDUAL SECTION STARTS -->

          <section class="individual-sec">
               <div class="container">
                <div class="d-flex">
                  <h2 class="individual"><?php echo get_field('individual_title',175); ?></h2>
                  <div class="thin_line"></div>
                </div>
                <div class="card-deck">
                  <div class="row">
                  <?php
                    if ($category == "all") {
                        $args = array(
                            'post_type' => 'blogs',
                            'post_status' => 'publish',
                            'offset' => 0,
                            // 'page'=>1,
                            'posts_per_page' => 6
                        );
                    } else {
                        $args = array(
                            'post_type' => 'blogs',
                            'post_status' => 'publish',
                            'offset' => 1,
                            // 'page'=>1,
                            'posts_per_page' => 6,
                            'tax_query' => array(
                                array(
                                    'taxonomy' => 'blogs-category',
                                    'field'    => 'slug',
                                    'terms'    => $category,
                                )
                            )
                        );
                    }
        ?>
        <?php
        $the_query = new WP_Query($args);
        while ($the_query->have_posts()) : $the_query->the_post();
            $image = wp_get_attachment_image_src(get_post_thumbnail_id($post->ID), 'single-post-thumbnail');
            $trimTitle = wp_trim_words(get_the_title(), $num_words = 15);
            $shortdescription = wp_trim_words(get_the_content(), $num_words = 30);
            $terms = get_the_terms($post->ID, 'blogs-category');
             $nameTerm = $terms[0]->name;
        ?>
                    <div class="col-md-4 mb-5 cards">
                      <div class="card">
                        <img src="<?php echo $image[0]; ?>" class="card-img-top featured1_img" alt="...">
                        <div class="card-body cardbg-color">
                          <a href="<?php echo get_field('category_link'); ?>"><h5 class="card-title"><?php echo $nameTerm; ?></h5></a>
                          <p class="card-text lorem-ipsum"><?php echo $trimTitle; ?></p>
                          <p class="card-text lorem-para"><?Php echo $shortdescription; ?></p>
                           <a class="card-text read-more mt-3 mb-3" href="<?php the_permalink(); ?>">Read more</a>                   
                        </div>
                      </div>
                    </div>
                    <!-- <div class="col-md-4 mb-5 cards">
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
                    </div> -->
                    <?php endwhile;
                   wp_reset_query();
               ?> 
                  </div>
                </div>
                <div class="view mt-3">
                  <a class="view-all" href="">view all</a>
                </div>
               </div>
          </section>

      <!-- INDIVIDUAL SECTION ENDS -->


      <!-- CATEGORIES SECTION STARTS -->

           <section class="categories-sec">
            <div class="container">
              <div class="d-flex">
                <h2 class="categories"><?php echo get_field('category_title'); ?> </h2>
                <div class="thin_line"></div>
              </div>
            </div>
            <div class="swiper-container position-relative">
              <div class="swiper-wrapper">
              <?php $cat = get_terms('blogs-category');

foreach ($cat as $catVal) {
    $termid = ($catVal->term_id);
    $meta_image = z_taxonomy_image_url($termid);

    // conut article
    $args = array(
        'post_type' => 'blogs',
        'post_status' => 'publish',

        'tax_query' => array(
            array(
                'taxonomy' => 'blogs-category',
                'field'    => 'slug',
                'terms'    => $catVal->slug,
            ),
        )
    );
    $the_query = new WP_Query($args);

?>
                <div class="swiper-slide">
                  <div class="swiper-slide-container-categories">
                        <div class="row">
                            <div class="col-md-12">
                            <a href="<?php echo get_field('category_link'); ?>">
                              <img src="<?php echo $meta_image; ?>" class="img-fluid combat_img" alt="">
                              <p class="combat"><?php echo $catVal->name; ?></p>
                              </a>  
                            </div>
                        </div>
                          
                  </div>
                  </div>
                  <!-- <div class="swiper-slide">
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
                            </div> -->
                            <?php } ?>
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


   <!-- FOOTERS STARTS -->
              <?php get_footer() ?>
   <!-- FOOTER ENDS -->

   
    
    <script>
          let searchForm = document.querySelector('.search-form');
           let searchFormm = document.querySelector('.qqqq');
           let searchFormmm = document.querySelector('.close_img');
           document.querySelector('#search-btn').onclick = () =>
           {
            searchForm.classList.toggle('active')
            searchFormm.classList.toggle('active')
           }
           document.querySelector('#close').onclick = () =>{
            searchForm.classList.remove('active')
            searchFormm.classList.remove('active')
           }
      </script>
</body>
</html>