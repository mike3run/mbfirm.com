+(($) ->
  currentItem = $('#icon-navigation-mobile .current-item')
  dropdown = $('#icon-navigation-mobile .dropdown')
  dropdownElement = $('#icon-navigation-mobile .dropdown .dropdown__element')
  slider = $('#graphic-slider .slider')

  currentItem.on 'click', ->
    currentItem.toggleClass 'is-active'
    dropdown.toggleClass 'is-active'

  dropdownElement.on 'click', ->
    that = $(@)
    slide = that.attr 'slide'
    contents = that.html()

    dropdownElement.removeClass 'is-selected'
    that.addClass 'is-selected'
    currentItem.html contents
    dropdown.removeClass 'is-active'
    slider.slick 'slickGoTo', slide


)(jQuery)
