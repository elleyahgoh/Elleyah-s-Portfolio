
$(document).ready(function(){
    $('.slides').slick(
        {
            dots: false,
            autoplay: true,
            autoplaySpeed: 7000,
            pauseOnFocus: true,
            prevArrow: "<a class='z-index-50 slides-prev top-0 bottom-0 position-absolute d-flex align-items-center justify-content-center'><i class='fa fa-chevron-left' aria-hidden='true'></i></a>",
            nextArrow: "<a class='z-index-50 slides-next top-0 bottom-0 right-0 position-absolute d-flex align-items-center justify-content-center'><i class='fa fa-chevron-right' aria-hidden='true'></i></a>"
        }
    );
});