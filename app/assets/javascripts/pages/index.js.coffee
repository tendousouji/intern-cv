ready = ->
  $('#return-title').on 'click', ->
    $('body').animate
      scrollTop: 0, 500

  $('#return-icon').on 'click', ->
    $('body').animate
      scrollTop: 0, 500

  $('.menu-bar').on 'click', ->
    $('.navbar').toggleClass('more')

$(document).ready(ready)
$(document).on('page:load', ready)
