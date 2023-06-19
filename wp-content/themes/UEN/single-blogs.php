<?php
/*Template Name: Blog */
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
      <?php  get_header() ?>
 </head>

 <!-- HEADER SECTION -->
 <header>
 <?php include("inc/nav.php");?>
 <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/assets/css/blogdetail.css">
    <?php $category = isset($_GET['cat']) ? $_GET['cat'] : "all"; ?>
 </header>
<!-- HEADER SECTION ENDS-->


<!-- BLOG DETAIL BANNER SECTION STARTS -->
          <section class="blogdetailbanner-sec">
             <div class="container">
             <?php
            while (have_posts()) : the_post();
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
                 <img src="<?php echo $image[0]; ?>" class="card-img-top img-fluid blogdetail_bannerimg" alt="">
             </div>
          </section>
<!-- BLOG DETAIL BANNER SECTION ENDS -->



<!-- CATEGOTY SECTION STARTS -->

      <section class="category-sec">
         <div class="container">
                <div class="d-flex published-socialicon">
                      <h3 class="category-detail"><?php echo $terms_slug_str ?></h3>
                      <div>
                        <div>
                        <a class ="socailicon1" href="https://www.facebook.com/sharer/sharer.php?u=<?php the_permalink(); ?>" target="_blank"><img src="<?php echo get_template_directory_uri(); ?>/assets/images/facebook_icon.svg" class="img-fluid" alt="Facebook_Icon"></a>
                        <a class ="socailicon1" href="https://www.instagram.com/sharer/sharer.php?u=<?php the_permalink(); ?>" target="_blank"><img src="<?php echo get_template_directory_uri(); ?>/assets/images/insta_icon.svg" class="img-fluid" alt="Facebook_Icon"></a>
                        <a class ="socailicon1" href="https://twitter.com/share?url=<?php the_permalink(); ?>" target="_blank"><img src="<?php echo get_template_directory_uri(); ?>/assets/images/twitter_icon.svg" class="img-fluid" alt="Facebook_Icon"></a>
                        <a class ="socailicon1 copylink-button" data-link ="<?php the_permalink(); ?>" href="<?php the_permalink(); ?>"><img src="<?php echo get_template_directory_uri(); ?>/assets/images/share_icon.svg" class="img-fluid"  alt=""></a>
                        </div>
                      </div>
                </div>
                <?php the_content();
                ?>
                <div class="blogdetailcategor-container">
                    <img src="<?php echo $image[0]; ?>" class="card-img-top img-fluid blogdetailcategory_img" alt="">
                </div> 
                
                 <?php the_content();
                ?>
                <?php endwhile;?>    
            </div>
      </section>
<!-- CATEGOTY SECTION ENDS -->


<!-- ASSOCIATE BLOGS SECTION STARTS -->

       <section class="associate-sec">
          <div class="associated-container">
            <div class="d-flex">
                <h2 class="associated-blogs">ASSOCIATED BLOGS</h2>
                <div class="thin_line"></div>
              </div>
              <div class="card-deck">
                <div class="row">
                        <?php
                      
                        $args = array(
                            'post_type' => 'blogs',
                            'post_status' => 'publish',
                            'post__not_in' => array(get_the_ID()),
                            'tax_query' => array(
                                array(
                                    'taxonomy' => 'blogs-category',
                                    'field'    => 'slug',
                                    'terms'    =>array_values($tslugs_arr),
                                ),
                            ),
                            'posts_per_page' => 3,
                        );
                        $the_query = new WP_Query($args);
                        if ($the_query->have_posts()) {
                            $i = 1;
                            while ($the_query->have_posts()) {
                                $the_query->the_post();


                                $trimTitle = wp_trim_words(get_the_title(), $num_words = 6);

                                $shordescription = wp_trim_words(get_the_content(), $num_words = 15);
                                $image = wp_get_attachment_image_src(get_post_thumbnail_id($post->ID), 'single-post-thumbnail');

                                $terms = get_the_terms($post->ID, 'blogs-category');
                                if ($terms && !is_wp_error($terms)) :
                                    $tslugs_arr = array();
                                    foreach ($terms as $term) {
                                        $tslugs_arr[] = $term->name;
                                    }
                                    $terms_slug_str = join(" ", $tslugs_arr);
                                endif;

                        ?>
                    
                  <div class="col-md-4 mb-5 cards">
                    <div class="card">
                      <img src="<?php echo $image[0] ?>" class="card-img-top featured1_img" alt="...">
                      <div class="card-body cardbg-color">
                      <?php
                                    $terms = get_the_terms($post->ID, 'blogs-category');
                                    if ($terms && !is_wp_error($terms)) :
                                        $tname_arr = array();
                                        $tslugs_arr = array();
                                        $count = 1;
                                        foreach ($terms as $term) {
                                    ?>
                                            <a href="<?php echo get_site_url() ?>/blogs?cat=<?php echo $term->slug ?>" class="fund">
                                                <?php if ($count > 1) { ?>,<?php } ?>
                                                <h5 class="card-title"><?php echo $term->name; ?></h5>
                                                
                                            </a>
                                    <?php $count++;
                                        }
                                        $terms_slug_str = join(",", $tslugs_arr);
                                    // $terms_name_arr = join(" ", $tname_arr);

                                    endif;
                                    ?>
                        <p class="card-text lorem-ipsum"><?php echo $trimTitle ?></p>
                        <p class="card-text lorem-para"><?php echo $shordescription; ?></p>
                         <a class="card-text read-more mt-3 mb-3" href="<?php the_permalink(); ?>">Read more</a>                   
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
                        wp_reset_query();
                        ?>
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
                  </div> -->
                </div>
              </div>
              <div class="view mt-3">
                <a class="view-all" href="<?php echo get_site_url() ?>/blogs?cat=<?php echo $term->slug ?>">View All</a>
              </div>
          </div>
       </section>   

<!-- ASSOCIATE BLOGS SECTION ENDS -->




 <!-- FOOTERS STARTS -->
           <?php get_footer() ?>
  <!-- FOOTER ENDS -->

  <script>
  $(document).on('click', ' .copylink-button', function (e) {
    var this_el = $(this);
    e.preventDefault();
    var $temp = $("<input>");
    $("body").append($temp);
    var linkval = this_el.attr('data-link');
    $temp.val(linkval).select();
    document.execCommand ("copy");
    $temp.remove();

    $(this).append('<label class="link-copied">Link copied</label>');

    setTimeout(function () {
      this_el.parent().find('label').remove();
    }, 1500);
  });
  </script>
</body>
</html>