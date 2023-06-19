<header class="header">
        <nav class="navbar navbar-expand-lg">
          <div class="container">
          <a class="navbar-brand zindex1000" href="<?php echo get_field('homepagelink',22);?>"> 
            <img src="<?php echo ot_get_option('header_logo'); ?>" class="img-fluid" alt="">
          </a>
          <!-- <a class="header-logo" href="index.html">Logo</a> -->
         
          <button class="navbar-toggler collapsed" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse collapse-bg-color" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto nav-page padding-three mobile-collapse">
                <!-- <li class="nav-item">
                <a class="nav-link navpage-link" href="index.html">
                    <img src="<?php echo get_template_directory_uri(); ?>/assets/images/logo.svg" class="img-fluid" alt="">
                </a>
              </li> -->
              <li class="nav-item">
                <a class="nav-link navpage-link" href="<?php echo get_field('homepagelink',22);?>"><?php echo get_field('home',22) ?></a>
              </li>
              <li class="nav-item">
                <a class="nav-link navpage-link" href="<?php echo get_field('aboutpagelink',22);?>"><?php echo get_field('about',22) ?></a>
              </li>
              <li class="nav-item dropdown"> 
                <a class="nav-link dropdown-toggle navpage-link2" href="categorylist.html" role="button" data-toggle="dropdown" aria-expanded="false">
                <?php echo get_field('categories',22) ?><img src="<?php echo get_template_directory_uri(); ?>/assets/images/downarrow_whiteimg.svg" class="img-fluid downarrow-whiteimg" alt="">
                </a>
                <div class="dropdown-menu">
                <?php
                $i = 1;
                $cat = get_terms('blogs-category');


                foreach ($cat as $catVal) {
                    if ($i > 8) {
                        break;
                    }
                    $termid = ($catVal->term_id);
                    $meta_image = z_taxonomy_image_url($termid);
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
                 <a class="dropdown-item dropdown-name" href="<?php echo get_site_url() ?>/blogs?cat=<?php echo $catVal->slug ?>"><?php echo $catVal->name ?></a>
                  <!-- <a class="dropdown-item dropdown-name" href="category.html"> RACKET</a> -->
                  <!-- <a class="dropdown-item dropdown-name" href="category.html">COMBAT</a>
                  <a class="dropdown-item dropdown-name" href="category.html">WATER</a>
                  <a class="dropdown-item dropdown-name" href="category.html">TEAM</a>
                  <a class="dropdown-item dropdown-name" href="category.html">INDIVIDUAL</a>
                  <a class="dropdown-item dropdown-name" href="category.html">EVENTS</a>
                  <a class="dropdown-item dropdown-name" href="category.html">EXTREME</a>
                  <a class="dropdown-item dropdown-name" href="category.html">MOTOR</a>
                  <a class="dropdown-item dropdown-name" href="category.html">WINTER</a> -->

                <?php
                    $i++;
                } ?>
                </div>
              </li>
              <li class="nav-item">
                <a class="nav-link navpage-link" href="<?php echo get_field('blogspagelink',22); ?>"><?php echo get_field('blogs',22) ?></a>
              </li>
              <li class="nav-item">
                <a class="nav-link navpage-link" href="<?php echo get_field('contact_pagelink',22); ?>"><?php echo get_field('contact',22) ?></a>
              </li>
              <li class="nav-item btn-padding">
                <a class="nav-link btn btn-subscribe" href="#subscribe"><?php echo get_field('subscribe_button',22) ?></a>
              </li>
              <li class="nav-item d-flex justify-content-center ">
                <img src="<?php echo get_field('search_white_img',22)?>"  class="img-fluid navpage-link1 searach-white-icon" id="search-btn" alt="">
                <img src="<?php echo get_template_directory_uri(); ?>/assets/images/search-black.svg" class="img-fluid navpage-link1 searach-black-icon" id="search-btn1" alt="">
              </li>
            </ul>
          </div>
            
        </div>
        </nav>
       
        <div id="qqqq" class="qqqq">
          <form form="search.html" class="search-form">
            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/logo.svg" class="img-fluid searchlogo-img" alt="">
            <input type="text" name="s" id="s" placeholder="search here">
            <label for="search-box"><img src="<?php echo get_template_directory_uri(); ?>/assets/images/search_greenimg.svg"alt="" ></label>
            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/close_img.svg" class="img-fluid close_img" id="close" alt="">
          </form>
        </div>
     
      </header>