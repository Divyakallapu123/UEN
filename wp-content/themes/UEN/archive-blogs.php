<?php

/**
 * Template Name: blogs
 * The template for displaying archive pages
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
<link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/assets/css/bloglist.css">
    <?php $category = isset($_GET['cat']) ? $_GET['cat'] : "all"; ?>
<!-- HEADER SECTION ENDS-->



 <!-- FEATURED SECTION STARTS  -->
 <section class="featured-sec">
    <div class="container">
      <div class="d-flex">
        <h2 class="featured"><?php if(isset($_GET['cat'])) { ?> <?php echo ucfirst($_GET['cat'] ) ?><?php }  else { ?> Featured <?php } ?></h2>
        <div class="thin_line"></div>
      </div>
      <div class="row mb-5"> 
      <?php
                        if (isset($_GET['cat'])) {
                            $args = array(
                                'post_type' => 'blogs',
                                'post_status' => 'publish',

                                'tax_query' => array(
                                    array(
                                        'taxonomy' => 'blogs-category',
                                        'field'    => 'slug',
                                        'terms'    => $_GET['cat'],
                                    ),
                                ),

                                'posts_per_page' => 1,
                                'paged' => 1,
                                'offset' => 0,
                            );
                        } else {
                            $args = array(
                                'post_type' => 'blogs',
                                'post_status' => 'publish',
                                'posts_per_page' => 1,
                                'paged' => 1,
                                'offset' => 0,
                            );
                        }
                        $the_query = new WP_Query($args);
                        if ($the_query->have_posts()) {
                            $i = 1;
                            while ($the_query->have_posts()) {
                                $the_query->the_post();


                                $trimTitle = wp_trim_words(get_the_title(), $num_words = 6);

                                $shortdescription = wp_trim_words(get_the_content(), $num_words = 20);
                                $image = wp_get_attachment_image_src(get_post_thumbnail_id($post->ID), 'single-post-thumbnail');

                                $terms = get_the_terms($post->ID, 'blogs-category');
                                if ($terms && !is_wp_error($terms)) :
                                    $tslugs_arr = array();
                                    foreach ($terms as $term) {
                                        $tslugs_arr[] = $term->slug;
                                        $tname_arr[] = $term->name;
                                    }
                                    $terms_slug_str = join(" ", $tslugs_arr);
                                endif;

                        ?>
         <div class="col-md-6 mb-5">
                <img src="<?php echo $image[0] ?>" class="img-fluid featured_img" alt="">
                <a href="<?php the_permalink(); ?>"><h5 class="category"><?php echo ("$terms_slug_str") ?></h5> </a>
                <p class="lorem-ipsum"><?php echo  $trimTitle ?></p>
                <p class="ac-magna"><?php echo $shortdescription; ?></p>
                <a class="read-more" href="<?php the_permalink(); ?>">Read more</a>     
         </div>
         <?php
                            }
                        } else {
                            // no posts found
                        }
                        /* Restore original Post Data */
                        wp_reset_query();
                        ?>

         <div class="col-md-6">
              <div class="row">
              <?php
                        if (isset($_GET['cat'])) {
                            $args = array(
                                'post_type' => 'blogs',
                                'post_status' => 'publish',

                                'tax_query' => array(
                                    array(
                                        'taxonomy' => 'blogs-category',
                                        'field'    => 'slug',
                                        'terms'    => $_GET['cat'],
                                    ),
                                ),

                                'posts_per_page' => 4,
                                'paged' => 1,
                                'offset' => 1,
                            );
                        } else {
                            $args = array(
                                'post_type' => 'blogs',
                                'post_status' => 'publish',
                                'posts_per_page' => 4,
                                'paged' => 1,
                                'offset' => 1,
                            );
                        }
                        $the_query = new WP_Query($args);
                        if ($the_query->have_posts()) {
                            $i = 1;
                            while ($the_query->have_posts()) {
                                $the_query->the_post();


                                $trimTitle = wp_trim_words(get_the_title(), $num_words = 6);

                                $shortdescription = wp_trim_words(get_the_content(), $num_words = 13);
                                $image = wp_get_attachment_image_src(get_post_thumbnail_id($post->ID), 'single-post-thumbnail');

                                $terms = get_the_terms($post->ID, 'blogs-category');
                                if ($terms && !is_wp_error($terms)) :
                                    $tslugs_arr = array();
                                    foreach ($terms as $term) {
                                        $tslugs_arr[] = $term->slug;
                                        $tname_arr[] = $term->name;
                                    }
                                    $terms_slug_str = join(" ", $tslugs_arr);
                                endif;

                        ?>
                  <div class="col-md-4 mb-3">
                       <img src="<?php echo $image[0] ?>" class="img-fluid featured_img1" alt="">
                  </div>
                  <div class="col-md-8 mb-5">
                       <a href="<?php the_permalink(); ?>"><h6 class="categor"><?php echo ("$terms_slug_str") ?></h6></a>
                        <p class="lorem-ipsumdolor"><?php echo $shortdescription; ?></p>
                        <a class="read-more"href="<?php the_permalink(); ?>">Read more</a>
                  </div>
                  <!-- <div class="col-md-4 mb-3">
                    <img src="<?php echo get_template_directory_uri(); ?>/assets/images/featured_img2.svg" class="img-fluid featured_img1" alt="">
                  </div>
                  <div class="col-md-8 mb-5">
                        <h6 class="categor">Category</h6>
                        <p class="lorem-ipsumdolor">Lorem ipsum dolor sit amet consectet Lorem ipsum dolor sit amet </p>
                        <a class="read-more"href="blogdetail.html">Read more</a>
                  </div>
                  <div class="col-md-4 mb-3">
                    <img src="<?php echo get_template_directory_uri(); ?>/assets/images/featured_img1.svg" class="img-fluid featured_img1" alt="">
                  </div>
                  <div class="col-md-8 mb-5">
                        <h6 class="categor">Category</h6>
                        <p class="lorem-ipsumdolor">Lorem ipsum dolor sit amet consectet Lorem ipsum dolor sit amet </p>
                        <a class="read-more"href="blogdetail.html">Read more</a>
                  </div>
                  <div class="col-md-4 mb-3">
                    <img src="<?php echo get_template_directory_uri(); ?>/assets/images/featured_img2.svg" class="img-fluid featured_img1" alt="">
                  </div>
                  <div class="col-md-8 mb-5">
                        <h6 class="categor">Category</h6>
                        <p class="lorem-ipsumdolor">Lorem ipsum dolor sit amet consectet Lorem ipsum dolor sit amet </p>
                        <a class="read-more"href="blogdetail.html">Read more</a>
                  </div> -->
                  <?php
                            }
                        } else {
                            // no posts found
                        }
                        /* Restore original Post Data */
                        wp_reset_query();
                        ?>
              </div>
         </div>
         
      </div>
        <div class="card-deck">
          <div class="row" id="blogs-list">
          <?php
                        if (isset($_GET['cat'])) {
                            $args = array(
                                'post_type' => 'blogs',
                                'post_status' => 'publish',

                                'tax_query' => array(
                                    array(
                                        'taxonomy' => 'blogs-category',
                                        'field'    => 'slug',
                                        'terms'    => $_GET['cat'],
                                    ),
                                ),

                                'posts_per_page' => 15,
                                'paged' => 1,
                                'offset' => 5,
                            );
                        } else {
                            $args = array(
                                'post_type' => 'blogs',
                                'post_status' => 'publish',
                                'posts_per_page' => 15,
                                'paged' => 1,
                                'offset' => 5,
                            );
                        }
                        $the_query = new WP_Query($args);
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
                                        $tname_arr[] = $term->name;
                                    }
                                    $terms_slug_str = join(" ", $tslugs_arr);
                                endif;

                        ?>
            <div class="col-md-4 mb-5 cards">
              <div class="card">
                <img src="<?php echo $image[0] ?>" class="card-img-top featured1_img" alt="...">
                <div class="card-body cardbg-color">
                <a href="<?php the_permalink(); ?>"><h5 class="card-title"><?php echo ("$terms_slug_str") ?></h5></a>
                  <p class="card-text lorem-ipsum"><?php echo  $trimTitle ?></p>
                  <p class="card-text lorem-para"><?php echo $shortdescription; ?></p>
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
                   <a class="card-text read-more mt-3 mb-3" href="blogdetail.html">Read more</a>                   
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
                   <a class="card-text read-more mt-3 mb-3" href="blogdetail.html">Read more</a>                   
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
                   <a class="card-text read-more mt-3 mb-3" href="blogdetail.html">Read more</a>                   
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
                   <a class="card-text read-more mt-3 mb-3" href="blogdetail.html">Read more</a>                   
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
                   <a class="card-text read-more mt-3 mb-3" href="blogdetail.html">Read more</a>                   
                </div>
              </div>
            </div>
            <div class="col-md-4 mb-5 cards">
                <div class="card">
                  <img src="<?php echo get_template_directory_uri(); ?>/assets/images/featured_groupimg.png" class="card-img-top featured1_img" alt="...">
                  <div class="card-body cardbg-color">
                    <h5 class="card-title">Category</h5>
                    <p class="card-text lorem-ipsum">Lorem ipsum dolor sit</p>
                    <p class="card-text lorem-para">Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.</p>
                     <a class="card-text read-more mt-3 mb-3" href="blogdetail.html">Read more</a>                   
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
                     <a class="card-text read-more mt-3 mb-3" href="blogdetail.html">Read more</a>                   
                  </div>
                </div>
              </div>
              <div class="col-md-4 mb-5 cards">
                <div class="card">
                  <img src="<?php echo get_template_directory_uri(); ?>/assets/images/featured_basketballimg.png" class="card-img-top featured1_img" alt="...">
                  <div class="card-body cardbg-color">
                    <h5 class="card-title">Category</h5>
                    <p class="card-text lorem-ipsum">Lorem ipsum dolor sit</p>
                    <p class="card-text lorem-para">Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.</p>
                     <a class="card-text read-more mt-3 mb-3" href="blogdetail.html">Read more</a>                   
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
                     <a class="card-text read-more mt-3 mb-3" href="blogdetail.html">Read more</a>                   
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
                     <a class="card-text read-more mt-3 mb-3" href="blogdetail.html">Read more</a>                   
                  </div>
                </div>
              </div>
              <div class="col-md-4 mb-3 cards">
                <div class="card">
                  <img src="<?php echo get_template_directory_uri(); ?>/assets/images/featuredboat_img.png" class="card-img-top featured1_img" alt="...">
                  <div class="card-body cardbg-color">
                    <h5 class="card-title">Category</h5>
                    <p class="card-text lorem-ipsum">Lorem ipsum dolor sit</p>
                    <p class="card-text lorem-para">Lorem ipsum dolor sit amet consectetur. Ac magna massa pellentesque viverra eu sit.A fermentum massa et commodo ut vitae.</p>
                     <a class="card-text read-more mt-3 mb-3" href="blogdetail.html">Read more</a>                   
                  </div>
                </div>
              </div> -->
              <?php
                            }
                        } else {
                            // no posts found
                        }
                        /* Restore original Post Data */
                        wp_reset_query();
                        ?>
          </div>
        </div>
        <?php if ($the_query->found_posts > 15) { ?>
                <?php $count = $the_query->found_posts;
                // echo $count
                ?>

                <div class="load mt-3">
                    <button type="submit" id="load_more_btn" class="btn load-more main-button <?php if ($count < 1) { ?> d-none <?php } ?>">LoadMore<img src="<?php echo get_template_directory_uri(); ?>/assets/images/down_arrowimg.svg" class="img-fluid" alt=""></button>
                </div>
            <?php } ?>
        <!-- <div class="load mt-3">
          <a class="load-more" href="">Load more <img src="<?php //echo get_template_directory_uri(); ?>/assets/images/down_arrowimg.svg" class="img-fluid" alt=""></a>
        </div> -->
    </div>     
</section>

  <!-- FEATURED SECTION ENDS  -->



 <!-- FOOTERS STARTS -->
     <?php get_footer(); ?>
  <!-- FOOTER ENDS -->

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
    var ajaxurl = "<?php echo admin_url('admin-ajax.php'); ?>";
    var page = 1;
    $('#load_more_btn').on('click', function() {
        $.ajax({
            url: ajaxurl,
            type: 'post',
            data: {
                'page': page,
                'action': 'load_posts_by_ajax_blogs',
                'cat': '<?php echo $category; ?>',
                'security': '<?php echo wp_create_nonce("load_more_posts"); ?>'
            },
            success: function(response) {
                console.log(response);
                var tmp = response.split("##");
                console.log(tmp);
                $("#blogs-list").append(tmp[2].substring(0, tmp[2].length - 1));
                if (((page * 3) + 15) < parseInt(tmp[1])) {
                     $('#load_more_btn').removeClass("d-none");

                } else {
                    $('#load_more_btn').addClass("d-none");
                }
                page++;
            },
            error: function(jqXHR, textStatus, errorThrown) {}
        });
    })
</script>  

</body>
</html>