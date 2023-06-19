<?php 
// Product Custom Post Type
function create_custom_post_type_blogs() {
    // set up product labels
    $labels = array(
        'name' => 'blogs',
        'singular_name' => 'blogs',
        'add_new' => 'Add New',
        'add_new_item' => 'Add New blogs',
        'edit_item' => 'Edit blogs',
        'new_item' => 'New blogs',
        'all_items' => 'All blogs',
        'view_item' => 'View blogs',
        'search_items' => 'Search blogs',
        'not_found' =>  'No blogs Found',
        'not_found_in_trash' => 'No blogs found in Trash', 
        'parent_item_colon' => '',
        'menu_name' => 'blogs',
    );
    
    // register post type
    $args = array(
        'labels' => $labels,
        'public' => true,
        'has_archive' => true,
        'show_ui' => true,
        'capability_type' => 'post',
        'hierarchical' => false,
        'rewrite' => array('slug' => 'blogs'),
        'query_var' => true,
        'taxonomies' => array('post_tag','post'),
        'menu_icon' => 'dashicons-table-row-after',
        'supports' => array(
            'title',
            'editor',
            'excerpt',
            'trackbacks',
            'custom-fields',
            'comments',
            'revisions',
            'thumbnail',
            'author',
            'page-attributes'
        )
    );
    register_post_type( 'blogs', $args );
    
    $labels = array(
        'name'              => _x( 'blogs Categories', 'phoronesis' ),
        'singular_name'     => _x( 'blogs Category', 'phoronesis' ),
        'search_items'      => __( 'Search Category', 'phoronesis' ),
        'all_items'         => __( 'All Category', 'phoronesis' ),
        'parent_item'       => __( 'Parent Category', 'phoronesis' ),
        'parent_item_colon' => __( 'Parent Category:', 'phoronesis' ),
        'edit_item'         => __( 'Edit Category', 'phoronesis' ),
        'update_item'       => __( 'Update Category', 'phoronesis' ),
        'add_new_item'      => __( 'Add New Category', 'phoronesis' ),
        'new_item_name'     => __( 'New Category Name', 'phoronesis' ),
        'menu_name'         => __( 'Category', 'phoronesis' ),
    );
    
    $rewrite = array(
        'slug'                       => 'blogs-category',
        'with_front'                 => true,
        'hierarchical'               => false,
    );
    $args = array(
        'labels'                     => $labels,
        'hierarchical'               => true,
        'public'                     => true,
        'show_ui'                    => true,
        'show_admin_column'          => true,
        'show_in_nav_menus'          => true,
        'show_tagcloud'              => true,
        'query_var' => true,
        'rewrite'                    => $rewrite,
    );
    
    register_taxonomy( 'blogs-category', array( 'blogs' ) , $args );

   }
add_action( 'init', 'create_custom_post_type_blogs' );
add_action('wp_ajax_load_posts_by_ajax_blogs', 'load_posts_by_ajax_blogs_callback');
add_action('wp_ajax_nopriv_load_posts_by_ajax_blogs', 'load_posts_by_ajax_blogs_callback');

function load_posts_by_ajax_blogs_callback()
{
    $page = (isset($_POST['page'])) ? $_POST['page'] : 0;
    $cat = isset($_POST['cat']) ? $_POST['cat'] : "";
    // check_ajax_referer('load_more_posts', 'security');
    check_ajax_referer('load_more_posts', 'security');


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

            'posts_per_page' => 3,
            'paged' => $page,
            'offset' => ($page - 1) * 3 + 15 ,
        );
    } else {
        $args = array(
            'post_type' => 'blogs',
            'post_status' => 'publish',
            'posts_per_page' => 3,
            'paged' => $page,
            'offset' => ($page - 1) * 3 + 15 ,
        );
    }

    $the_query = new WP_Query($args);
    echo "##" . $count = $the_query->found_posts . "##";




    while ($the_query->have_posts()) {
        $the_query->the_post();


        $trimTitle = wp_trim_words(get_the_title(), $num_words = 6);

        $shortdescription = wp_trim_words(get_the_content(), $num_words =18);
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
            <?php
                            }
                        } 
                        /* Restore original Post Data */
                        wp_reset_query();
                        ?>