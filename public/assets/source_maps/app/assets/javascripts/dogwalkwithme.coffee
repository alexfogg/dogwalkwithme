($ "a[data-toggle=modal]").click ->
  target = ($ @).attr('data-target')
  url = ($ @).attr('href')
  ($ target).load(url)

window.app =
  document_ready: ->
    $('body').on('keyup', '#searchwalks', app.filter_walks)
    $('#reg_form').on('click', 'a[data-clear-form]', app.clear_reg_form)
    $('#reg_form').on('click', 'a[data-close-form]', app.close_reg_form)
  close_reg_form: (e) ->
    e.preventDefault()
    $('#myModal').modal('hide')
  clear_reg_form: (e) ->
    e.preventDefault()
    $("#reg_form").hide()
  show_reg_form: (e) ->
    e.preventDefault()
    $("#reg_form").show()
 filter_walks: (e) ->
    query = $('#searchwalks').val()
    if query.length == 0
      settings =
        dataType: 'script'
        type: 'get'
        url: '/walks'
      $.ajax(settings)
    else
      settings =
        dataType: 'script'
        type: 'get'
        url: "/walks/search?query=#{query}"
      $.ajax(settings)
$(document).ready(app.document_ready)
