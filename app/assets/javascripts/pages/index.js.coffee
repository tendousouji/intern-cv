ready = ->
  $('a[href*=#]').on 'click', ->
    target = $(this.hash).offset().top
    if $(window).width() <= 960
      $('body').animate
        scrollTop: target - 50, 500
      $('.navbar').removeClass('more')
    else
      $('body').animate
        scrollTop: target, 500

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
