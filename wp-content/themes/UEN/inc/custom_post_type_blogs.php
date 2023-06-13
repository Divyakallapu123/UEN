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
?>