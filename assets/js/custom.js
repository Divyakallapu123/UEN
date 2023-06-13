 /*************Header shrink *****************/ 
const body = document.body;
const scrollUp = "scroll-up";
const scrollDown = "scroll-down";
let lastScroll = 0;

window.addEventListener("scroll", () => {
    const currentScroll = window.pageYOffset;
    if (currentScroll == 0) {
        body.classList.remove(scrollUp);
        return;
    }

    if (currentScroll > lastScroll && !body.classList.contains(scrollDown)) {
        // down
        body.classList.remove(scrollUp);
        body.classList.add(scrollDown);
    } else if (currentScroll < lastScroll && body.classList.contains(scrollDown)) {
        // up
        body.classList.remove(scrollDown);
        body.classList.add(scrollUp);
    }
    lastScroll = currentScroll;
});
  /*************Header shrink end*****************/ 

wow = new WOW(
    {
        animateClass: 'animated',
        offset: 100,
        mobile: true
    }
);
wow.init();  



/********** swiper starts ************/ 
$( document ).ready(function() {
  var swiper = new Swiper('.swiper-container', {
    pagination: '.swiper-pagination',
    slidesPerView: 4,
    loop: true,
    centeredSlides: true,
    paginationClickable: true,
    spaceBetween: 30,
    slideToClickedSlide: true,
    navigation: {
      nextEl: ".swiper-button-next",
      prevEl: ".swiper-button-prev",
    },
    breakpoints: {
         320: {
           slidesPerView: 1,
         },
         375: {
           slidesPerView: 2,
         },
         425: {
           slidesPerView: 2,
         },
         768: {
           slidesPerView: 3,
         },
         1200: {
          slidesPerView: 3,
        },
       },
  });
});


/******* swiper starts  ********/



if ($(".formValidation").length) {
    $(".formValidation")
      .bootstrapValidator({
        feedbackIcons: {
          valid: "glyphicon glyphicon-ok",
          invalid: "form-remove",
          validating: "glyphicon glyphicon-refresh",
        },
      })
      .on("success.form.bv", function (e) {
        e.preventDefault();
        var oForm = $(e.target);
        oForms.submitForm(e, oForm);
      });
  }  