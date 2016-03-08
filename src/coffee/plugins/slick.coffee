$('#hero .carousel').slick(
  arrows : false
  dots : true
  autoplay : false
  autoplaySpeed : 5000
)


$('#graphic-slider .slider').slick(
  arrows : false
  dots : false
  swipe : false
  fade : true
)

$('#pull-quotes .partners').slick(
  arrows : false
  dots : false
  slidesToShow : 2
  slidesToScroll : 2
  mobileFirst : true
  autoplay : true
  autoplaySpeed : 5000
  responsive : [
    {
      breakpoint : 768
      settings :
        slidesToShow : 3
        slidesToScroll : 3
    }
  ]
)


$('#text-slider .slides').slick(
  arrows : false
  dots : true
  mobileFirst : true
  responsive : [
    {
      breakpoint : 540
      settings :
        arrows: true
    }
  ]
)
