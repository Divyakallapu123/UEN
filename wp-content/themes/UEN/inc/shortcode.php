<?php
add_shortcode( 'culture_section','culture_section_code' );

function culture_section_code () {

    $result ='';
   
$result .='
<section class="culture-sec">';

$result .='<div class="container">
   <div class="head-our wow animated fadeInUp">
       <h2 class="fw-900">'.get_field('culture_sec_heading').'</h2>
   </div>
   <div class="row">';
   $i=1;
while(have_rows('culture_cards_detail')) : the_row(); 
while(have_rows('culture_cards')) : the_row();
   
   $result .='<div class="col-md-4 mb-3 wow animated fadeInUp">
           <div class="card culture-card">
               <div class="card-body">
                   <div class="culture-img">
                       <div class="cult-num fw-900">'.esc_html($i).' </div>
                       <div>
                           <img src="'.get_sub_field('card_image').'" alt="costfigure" class="cult-img">
                       </div>
                   </div>
                   <h4 class="fw-900">'.get_sub_field('name').'</h4>
                   <p>'.get_sub_field('content').'
                   </p>
               </div>
           </div>
       </div>'; ?>
   <?php $i++; endwhile;  endwhile;
    
       
      $result .='</div>
</div>';?>
<?php
$result .='</section>';
return $result;
}
?>

<?php
add_shortcode( 'counter_section','counter_code' );

function counter_code () {

    $result ='';
   
$result .='<section class="about-projects wow animated fadeInUp">
<div class="container">
    <div class="project-slider">';
   while(have_rows('counter_details')) : the_row(); 
    while(have_rows('counter_content')) : the_row(); 
    
        $result .='<div>
            <div class="row slide-margin">
                <div class="col-md-4 slide-img">
                    <img src="'.get_sub_field('slider_image').'" class="img-fluid" alt="company-banner">
                </div>
                <div class="col-md-8 slide-content">
                    <div class="d-block justify-content-center">
                        <div class="f-70 mr-3">'.get_sub_field('slider_count_value').' </div>
                        <h2 class="f-40 align-self-center">'.get_sub_field('slider_title').'</h2>
                    </div>
                </div>
            </div>
        </div>';
   endwhile;
 endwhile;
        
        $result .='</div>
    <div class="dots-bg"></div>
</div>

</section>';
return $result;
}
?>

<?php
add_shortcode( 'faq_section','faq_section_code' );

function faq_section_code () {

    $result ='';
   
$result .='
<div class="accordion wow animated fadeInUp" id="accordionfaq">';
          
            $i=1;
            while(have_rows('faq_content')) : the_row(); 
            
            while(have_rows('ques_ans')) : the_row();
           
            $show=$i==1?"show":"";
            $collapsed=$i==1?"":"collapsed";
            
                $result .='<div class="card collapse-card">
                    <div class="card-header" id="faq-'.esc_html($i).'">
                        <h4 class="mb-0">
                            <button class="btn btn-link btn-block btn-que '.esc_html($collapsed).'" type="button" data-toggle="collapse"
                                data-target="#collapse-'.esc_html($i).'" aria-expanded="true" aria-controls="collapse-'.esc_html($i).'">
                                '.get_sub_field('question').'
                            </button>
                        </h4>
                    </div>

                    <div id="collapse-'.esc_html($i).'" class="collapse '.esc_html($show).' " aria-labelledby="faq-'.esc_html($i).'" data-parent="#accordionfaq">
                        <div class="card-body collapsecard-body">
                        '.get_sub_field('answer').'
                        </div>
                    </div>
                </div>';?>
            <?php  $i++; endwhile; endwhile;
                $result .='</div>';
                return $result;
}
?>


<?php
add_shortcode( 'text_image_section','text_image_section_code' );

function text_image_section_code () {

    $result ='';
    //$result .='<section>';
    
    while(have_rows('text-image_content')) : the_row();
    if(have_rows('text-image_detail')):
     while(have_rows('text-image_detail')) : the_row();
     $type = get_sub_field('type');
     $button_link = get_sub_field('button_link');
    $button_txt =get_sub_field('button_text');
    $image_div_class="";
    $image_2div_class="";
    $image_class="clientreq-img";
    $text_div_class="";
     switch ($type) {
        case "image-text":
            $image_div_class.="order-1 order-md-1";
            $image_2div_class.="text-left";
            $image_class="clientreq-img";
            $text_div_class.="order-2 order-md-2";
            break;
        case "text-image":
            $image_div_class.="order-1 order-md-2";
            $text_div_class.="order-md-1 order-2";
            $image_2div_class.="text-right";
             $image_class="proj-img";
            break;
            
        }?>
        <?php
        $result .='<div class="clientreq-sec" style="background-color: '.get_sub_field("backgroung_color").'">
            <div class="row no-gutters">
                <div class="col-md-6 my-auto '.esc_html($image_div_class).' wow animated fadeInUp">
                    <div class="'.esc_html($image_2div_class).'">
                        <img src="'.get_sub_field("section_image").'" alt="group of members" class="'.esc_html($image_class).'" />
                    </div>
                </div>
                <div class="col-md-6 align-self-center '.esc_html($text_div_class).' wow animated fadeInUp">
                    <div class="clintreq-content">
                        <h2 class="fw-900">'.get_sub_field("section_title").'</h2>
                        <p>
                        '.get_sub_field('section_content').'
                        </p>'; ?>
                      <?php  if(get_sub_field('button_link')!=NULL){ 
                        $result .='<div class="explore">
                            <a href="'.esc_html($button_link).'" class="theme-btn">'.esc_html($button_txt).'</a>';?>
                            <?php }
                            $result .='</div>
                    </div>
                </div>
            </div>
        </div>';
        endwhile;  endif; endwhile;
        //$result .='</section>';
        return $result;
}
?>