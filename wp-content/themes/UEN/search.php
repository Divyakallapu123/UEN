
<?php
/*Template Name: Search */
/**
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
    <?php get_header(); ?>
</head>

<body>
    <!--[if lte IE 9]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
        <![endif]-->
      <!-- HEADER SECTION -->
        <?php include("inc/nav.php");?>
        <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/assets/css/search.css">
      <!-- HEADER SECTION ENDS-->
    <!-- header-start -->
    <section class="result-sec">
    <div class="container">
          <div>
              <h2 class="result">Results for <span class="team-thrones">‘<?php echo get_search_query(); ?>’</span> <img src="assets/images/search-black.svg" class="img-fluid" alt=""> </h2>
          </div>
          <div class="card-deck mt-5">
            <div class="row">
            <?php
                            $s = get_search_query();
                            $args = array(
                                'post_type' => 'blogs',
                                'post_status' => 'publish',

                                'tax_query' => array(
                                    array(
                                        'taxonomy' => 'blogs-category',
                                        'field'    => 'slug',
                                        'terms'    => $s,
                                    ),
                                )
                            );

                            $the_query = new WP_Query($args);


                            if (empty($the_query->have_posts()) || $the_query->have_posts() == null) {
                                $args = array(
                                    's' => $s
                                );
                                $the_query = new WP_Query($args);
                            }
                            if ($the_query->have_posts()) {
                                $i = 1;
                                while ($the_query->have_posts()) {
                                    $the_query->the_post();


                                    $trimTitle = wp_trim_words(get_the_title(), $num_words = 6);

                                    $shortdescription = wp_trim_words(get_the_content(), $num_words = 18);
                                    $image = wp_get_attachment_image_src(get_post_thumbnail_id($post->ID), 'single-post-thumbnail');

                                    $terms = get_the_terms($post->ID, 'blogs-category');
                                    if ($terms && !is_wp_error($terms)) :
                                        $tslugs_arr = array();
                                        foreach ($terms as $term) {
                                            $tslugs_arr[] = $term->slug;
                                        }
                                        $terms_slug_str = join(" ", $tslugs_arr);
                                    endif;


                            ?>
                                     
              <div class="col-md-4 mb-5 cards">
                <div class="card">
                  <img src="<?php echo $image[0]; ?>" class="card-img-top featured1_img" alt="...">
                  <div class="card-body cardbg-color">
                    <h5 class="card-title"><?php echo $terms[0]->name; ?></h5>
                    <p class="card-text lorem-ipsum"><?php echo $trimTitle; ?></p>
                    <p class="card-text lorem-para"><?Php echo $shortdescription; ?></p>
                     <a class="card-text read-more mt-3 mb-3" href="">Read more<img src="<?php echo get_template_directory_uri(); ?>/assets/images/arrow-right.svg" class="img-fluid arrow-right" alt=""></a>                   
                  </div>
                </div>
              </div>
              <?php
                                        $i++;
                                }
                            } else {
                                // no posts found
                            }
                            /* Restore original Post Data */
                            wp_reset_postdata();
                            ?>
              <!-- <div class="col-md-4 mb-5 cards">
                <div class="card">
                  <img src="assets/images/featured2_img.png" class="card-img-top featured1_img" alt="...">
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
                  <img src="assets/images/featured3_img.png" class="card-img-top featured1_img" alt="...">
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
                  <img src="assets/images/featured4_img.png" class="card-img-top featured1_img" alt="...">
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
                  <img src="assets/images/featured5_img.png" class="card-img-top featured1_img" alt="...">
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
                  <img src="assets/images/featured6_img.png" class="card-img-top featured1_img" alt="...">
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
                  <img src="assets/images/featured_groupimg.png" class="card-img-top featured1_img" alt="...">
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
                  <img src="assets/images/featuredboat_img.png" class="card-img-top featured1_img" alt="...">
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
                  <img src="assets/images/featured_basketballimg.png" class="card-img-top featured1_img" alt="...">
                  <div class="card-body cardbg-color">
                    <h5 class="card-title">Category</h5>
                    <p class="card-text lorem-ipsum">Lorem ipsum dolor sit</p>
                    <p class="card-text lorem-para">Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.</p>
                     <a class="card-text read-more mt-3 mb-3" href="">Read more</a>                   
                  </div>
                </div>
              </div> -->
            </div>
          </div>
    </div>
</section>




    <?php
    get_footer(); ?>