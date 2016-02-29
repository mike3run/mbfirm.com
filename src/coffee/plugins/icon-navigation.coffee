+(($) ->

  option = $('#icon-navigation .option')
  slider = $('#graphic-slider .slider')

  option.on 'click', ->
    that = $(@)
    slide = that.attr 'slide'

    option.removeClass 'is-active'
    slider.slick 'slickGoTo', slide
    that.addClass 'is-active'

)(jQuery)
