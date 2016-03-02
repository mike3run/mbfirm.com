+(($) ->
  aboutBtn = $('#team-body-mobile .toggle--about')
  infoBtn = $('#team-body-mobile .toggle--info')
  info = $('#team-body-mobile #info')
  about = $('#team-body-mobile #about')

  aboutBtn.on 'click', ->
    infoBtn.removeClass 'is-selected'
    aboutBtn.addClass 'is-selected'
    info.removeClass 'is-selected'
    about.addClass 'is-selected'

  infoBtn.on 'click', ->
    infoBtn.addClass 'is-selected'
    aboutBtn.removeClass 'is-selected'
    info.addClass 'is-selected'
    about.removeClass 'is-selected'

)(jQuery)
