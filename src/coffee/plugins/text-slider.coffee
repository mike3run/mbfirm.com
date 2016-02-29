+(($) ->
  # http://tylergaw.com/articles/reacting-to-media-queries-in-javascript

  mql = window.matchMedia '(min-width: 768px)'
  breakpoint =
    matches : true
    media : '(min-width: 768px)'

  handleMediaChange = (breakpoint) ->
    if breakpoint.matches
      # Expand the text
    else
      # Compress the text

  # First compress the text…

  # Then add the event Listener to react and be truly responsive?
  mql.addListener handleMediaChange


)(jQuery)
