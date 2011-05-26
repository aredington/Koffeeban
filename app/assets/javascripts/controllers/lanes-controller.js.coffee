#Define LanesController on this to put it in the global scope.
this.LanesController = Backbone.Controller.extend
  # Set up the routing map. The default route will go to the
  #  LanesController.index() function.
  routes:
    "": "index"
    "nc": "newCard"

  init: ->
  # Set up application scaffolding, the main application window
  # and the div where the board will render.
    unless @app
      @app= new Application()
      $('body').append(@app.el)
    if $(@app.el).html() == ""
      @app.render()
      lanes = new Lanes()
      new LanesIndex(model: lanes)
      lanes.fetch()

  # Fetch the data for the initial page, and display a view with it.
  index: ->
    @init()


  newCard: ->
    $.modal.close()
    @init()
    card = new Card()
    dialog = new NewCard(model:card)
    $(dialog.render().el).modal()
