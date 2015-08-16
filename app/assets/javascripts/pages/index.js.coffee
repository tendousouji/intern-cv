ready = ->

  # Change navbar link css when scroll
  $(window).scroll ->
    cur_pos = $(this).scrollTop()
    $('section').each ->
      top = $(this).offset().top - 150
      bottom = top + $(this).outerHeight()
      if cur_pos >= top && cur_pos <= bottom
        $('.tag').children('a').removeClass('high-light')
        $('a').siblings('.circle').removeClass('high-light')
        $('.tag').children('a[href=#'+$(this).attr('id')+']').addClass('high-light')
        $('a[href=#'+$(this).attr('id')+']').siblings('.circle').addClass('high-light')

  # Make navbar clickable
  $('a[href*=#]').on 'click', ->
    target = $(this.hash).offset().top
    if $(window).width() <= 960
      $('body').animate
        scrollTop: target - 50, 500
      $('.navbar').removeClass('more')
    else
      $('body').animate
        scrollTop: target, 500

  # Make return section clickable
  $('#return-title').on 'click', ->
    $('body').animate
      scrollTop: 0, 500

  $('#return-icon').on 'click', ->
    $('body').animate
      scrollTop: 0, 500

  # Make menu bar in mobile device clickable
  $('.menu-bar').on 'click', ->
    $('.navbar').toggleClass('more')

$(document).ready(ready)
$(document).on('page:load', ready)
