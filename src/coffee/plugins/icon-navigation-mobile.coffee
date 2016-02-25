+(($) ->
  currentItem = $('#icon-navigation-mobile .current-item')
  dropdown = $('#icon-navigation-mobile .dropdown')

  currentItem.on 'click', ->
    currentItem.toggleClass 'is-active'
    dropdown.toggleClass 'is-active'

)(jQuery)
