ready = ->
  $('.menu-bar').on 'click', ->
    $('.navbar').toggleClass('more')

$(document).ready(ready)
$(document).on('page:load', ready)
