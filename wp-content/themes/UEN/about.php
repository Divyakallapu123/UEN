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
 <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/assets/css/about.css">
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
                <h2 class="team"><?php echo get_field('team_title'); ?></h2>
                <div class="thin_line"></div>
              </div>
         </div>
         <div class="swiper-container position-relative">
            <div class="swiper-wrapper">
            <?php while(have_rows('cards')): the_row(); ?>
              <div class="swiper-slide">
                <div class="swiper-slide-container-categories">
                      <div class="row">
                          <div class="col-md-12">
                            <img src="<?php echo get_sub_field('card_image'); ?>" class="img-fluid combat_img" alt="">
                            <div class="d-flex jane-doe">
                                <h3 class="jane"><?php echo get_sub_field('card_title'); ?></h3>
                                <p class="manager"><?php echo get_sub_field('card_title2'); ?></p>
                            </div>
                          </div>
                      </div>
                        
                </div>
                </div>
                <?php  endwhile; ?>  
                <!-- <div class="swiper-slide">
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
                          </div> -->
              
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
            <?php
                    if ($category == "all") {
                        $args = array(
                            'post_type' => 'blogs',
                            'post_status' => 'publish',
                            'offset' => 0,
                            // 'page'=>1,
                            'order' => 'DESC',
                            'posts_per_page' => 6
                        );
                    } else {
                        $args = array(
                            'post_type' => 'blogs',
                            'post_status' => 'publish',
                            'offset' => 0,
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
                  <a href="<?php echo get_site_url() ?>/blogs?cat=<?php echo $terms[0]->slug; ?>"><h5 class="card-title"><?php echo $nameTerm; ?></h5></a>
                    <p class="card-text lorem-ipsum"><?php echo $trimTitle; ?></p>
                    <p class="card-text lorem-para"><?Php echo $shortdescription; ?></p>
                     <a class="card-text read-more mt-3 mb-3" href="<?php the_permalink(); ?>">Read more<img src="<?php echo get_template_directory_uri(); ?>/assets/images/arrow-right.svg" class="img-fluid arrow-right" alt=""></a>                   
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
            <a class="view-all" href="<?php echo get_site_url() ?>/blogs" ?><?php echo get_field('view_all'); ?></a>
          </div>  
    </div>
 </section>

<!-- FEATURED SECTION ENDS -->


 <!-- CATEGORIES SECTION STARTS -->

 <section class="categories-sec">
    <div class="container">
      <div class="d-flex">
      <a href="<?php echo get_site_url() ?>/Categories"><h2 class="categories"><?php echo get_field('category_title'); ?> </h2></a>
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
                             <a href="<?php echo get_site_url() ?>/blogs?cat=<?php echo $catVal->slug ?>">
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
        <a class="view-all" href="<?php echo get_site_url() ?>/categories" ?>view all</a>
      </div> 
   </section>

<!-- CATEGORIES SECTION ENDS -->


 <!-- FOOTERS STARTS -->
          <?php get_footer() ?>
  <!-- FOOTER ENDS -->

</body>
</html>