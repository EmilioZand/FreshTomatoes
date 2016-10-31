$.fn.stars = ->
  $(this).each ->
    $(this).html $('<span />').width(Math.max(0, Math.min(5, parseFloat($(this).html()))) * 16)

$(document).on 'turbolinks:load', ->
  $('span.stars').stars()