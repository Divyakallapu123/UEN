<?php



/*Template Name: Categories */ ?>

<!DOCTYPE html>
<html lang="en-US">


<head>

    <?php

    /*** The main template file*

     * This is the most generic template file in a WordPress theme

     * * and one of the two required files for a theme (the other being style.css).

     * It is used to display a page when nothing more specific matches a query.

     * E.g., it puts together the home page when no home.php file exists.

     * @link https://developer.wordpress.org/themes/basics/template-hierarchy/

    * @package WordPress

    * @subpackage Twenty_Twenty_One

    * @since Twenty Twenty-One 1.0

     */

    get_header();

    ?>

</head>


<body>
   <!-- HEADER SECTION -->
   <?php include("inc/nav.php");?>
   <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/assets/css/category.css">
    <?php $category = isset($_GET['cat']) ? $_GET['cat'] : "all"; ?>
<!-- HEADER SECTION ENDS-->
   


<!-- CATEGORY SECTION STARTS -->

      <section class="category-sec">
           <div class="category-container">
            <div class="d-flex">
            <a href="<?php echo get_site_url() ?>/Categories"><h2 class="categories"><?php echo get_field('categories_title'); ?> </h2></a>
                <div class="thin_line"></div>
              </div>
              <div class="card-deck">
                <div class="row">
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
           <div class="col-md-4 mb-5 cards">
                    <div class="card">
                    <a href="<?php echo get_site_url() ?>/blogs?cat=<?php echo $catVal->slug ?>">
                      <img src="<?php echo $meta_image; ?>" class="card-img-top category-img" alt="...">
                      <div class="card-body card-bgcolor">
                        <h5 class="card-title racket"><?php echo $catVal->name; ?></h5>                  
                      </div>
                      </a>  
                    </div>
                  </div>
                  <?php }  ?>    
                  
                  <!-- <div class="col-md-4 mb-5 cards">
                    <div class="card">
                      <img src="<?php echo get_template_directory_uri(); ?>/assets/images/combat_img.png" class="card-img-top category-img" alt="...">
                      <div class="card-body card-bgcolor">
                        <h5 class="card-title racket">Combat</h5>                  
                      </div>
                    </div>
                  </div> -->
                  <!-- <div class="col-md-4 mb-5 cards">
                    <div class="card">
                      <img src="<?php echo get_template_directory_uri(); ?>/assets/images/water_img.png" class="card-img-top category-img" alt="...">
                      <div class="card-body card-bgcolor">
                        <h5 class="card-title racket">Water</h5>                  
                      </div>
                    </div>
                  </div>
                  <div class="col-md-4 mb-5 cards">
                    <div class="card">
                      <img src="<?php echo get_template_directory_uri(); ?>/assets/images/team_img.png" class="card-img-top category-img" alt="...">
                      <div class="card-body card-bgcolor">
                        <h5 class="card-title racket">TEAM</h5>                  
                      </div>
                    </div>
                  </div>
                  <div class="col-md-4 mb-5 cards">
                    <div class="card">
                      <img src="<?php echo get_template_directory_uri(); ?>/assets/images/individual_img.png" class="card-img-top category-img" alt="...">
                      <div class="card-body card-bgcolor">
                        <h5 class="card-title racket">Individual</h5>                  
                      </div>
                    </div>
                  </div>
                  <div class="col-md-4 mb-5 cards">
                    <div class="card">
                      <img src="<?php echo get_template_directory_uri(); ?>/assets/images/featured1_img.png" class="card-img-top category-img" alt="...">
                      <div class="card-body card-bgcolor">
                        <h5 class="card-title racket">EVENTS</h5>                  
                      </div>
                    </div>
                  </div>
                  <div class="col-md-4 mb-5 cards">
                    <div class="card">
                      <img src="<?php echo get_template_directory_uri(); ?>/assets/images/featured1_img.png" class="card-img-top category-img" alt="...">
                      <div class="card-body card-bgcolor">
                        <h5 class="card-title racket">EXTREME</h5>                  
                      </div>
                    </div>
                  </div>
                  <div class="col-md-4 mb-5 cards">
                    <div class="card">
                      <img src="<?php echo get_template_directory_uri(); ?>/assets/images/combat_img.png" class="card-img-top category-img" alt="...">
                      <div class="card-body card-bgcolor">
                        <h5 class="card-title racket">MOTOR</h5>                  
                      </div>
                    </div>
                  </div>
                  <div class="col-md-4 mb-5 cards">
                    <div class="card">
                      <img src="<?php echo get_template_directory_uri(); ?>/assets/images/water_img.png" class="card-img-top category-img" alt="...">
                      <div class="card-body card-bgcolor">
                        <h5 class="card-title racket">WINTER</h5>                  
                      </div>
                    </div>
                  </div> -->
                </div>
              </div>
           </div>
      </section>

<!-- CATEGORY SECTION ENDS -->





    


<!-- FOOTERS STARTS -->
          <?php get_footer(); ?>
<!-- FOOTER ENDS -->

</body>

</html>