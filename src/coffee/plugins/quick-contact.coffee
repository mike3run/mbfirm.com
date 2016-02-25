+(($) ->
  trigger = $('#main-nav .quick-consult-trigger')
  close = $('#quick-contact .sidebar__close')
  overlay = $('#quick-contact .overlay')
  sidebar = $('#quick-contact .sidebar')
  menuOverlay = $('.mobile-nav__overlay')
  menuSidebar = $('.mobile-nav__sidebar')
  submit = $('#quick-contact input[type="submit"]')

  body = $('body')

  removeMenu = ->
    body.css(
      'overflow' : 'inherit'
      'height' : 'inherit'
    )
    sidebar.removeClass 'is-active'
    overlay.removeClass 'is-active'
    return

  trigger.on 'click', (e) ->
    e.preventDefault()
    menuSidebar.removeClass 'is-active'
    menuOverlay.removeClass 'is-active'
    overlay.addClass 'is-active'
    sidebar.addClass 'is-active'
    body.css(
      'overflow' : 'hidden'
      'height' : '100%'
    )

  overlay.on 'click', removeMenu

  close.on 'click', removeMenu


)(jQuery)
