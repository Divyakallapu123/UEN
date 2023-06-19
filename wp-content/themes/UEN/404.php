<?php
/**
 *  Template Name: 404error page
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


<?php get_header(); ?>
<body>
<!-- HEADER SECTION -->
	<?php include("inc/nav.php"); ?>
    <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/assets/css/404errorpage.css">
<!-- HEADER SECTION ENDS-->

    <section class="errorpage-sec"> 
            <div class="error-container">
                 <div class="pagenotfound">
                    <img src="<?php echo get_template_directory_uri(); ?>/assets/images/404error_img.png" class="img-fluid error_img" alt="">
                 </div>
                 <div class="error-contant">
                    <h2 class="page"><?php echo ot_get_option('error_heading');?></h2>
                    <p class="page-para"><?php echo ot_get_option('error_desc');?></p>
                    <div class="homepagebtn">
                        <a class="btn btn-homepage" href="<?php echo get_site_url(); ?>"><?php echo ot_get_option('button_title');?></a>
                    </div>
                    
                 </div>
                  
            </div>
          </section>    
	<!-- --------- footer starts -------  -->
    
    <script src="<?php echo get_template_directory_uri()?>/assets/js/jquery.slim.min.js"></script>
<?php get_footer(); ?>
 
</body>
    
    </html>