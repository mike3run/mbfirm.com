+(($) ->
  toggle = $('#main-nav .toggle')
  close = $('.mobile-nav__sidebar--close')
  overlay = $('.mobile-nav__overlay')
  sidebar = $('.mobile-nav__sidebar')
  menuItem = $('.mobile-nav__sidebar .menu__item')

  body = $('body')

  removeMenu = ->
    body.css(
      'overflow' : 'inherit'
      'height' : 'inherit'
    )
    sidebar.removeClass 'is-active'
    overlay.removeClass 'is-active'
    return

  toggle.on 'click', ->
    overlay.addClass 'is-active'
    sidebar.addClass 'is-active'
    body.css(
      'overflow' : 'hidden'
      'height' : '100%'
    )

  overlay.on 'click', removeMenu

  close.on 'click', removeMenu

  menuItem.on 'click', removeMenu


)(jQuery)
