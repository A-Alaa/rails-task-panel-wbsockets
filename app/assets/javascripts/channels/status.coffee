App.status = App.cable.subscriptions.create "StatusChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    for td in $('.alg-id')
      if data['updated_algorithm'].id == parseInt( td.textContent )
        $(td.parentNode).find(".status").text( data['updated_algorithm'].status )