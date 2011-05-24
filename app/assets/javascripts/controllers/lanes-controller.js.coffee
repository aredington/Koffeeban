#Define LanesController on this to put it in the global scope.
this.LanesController = Backbone.Controller.extend
  # Set up the routing map. The default route will go to the
  #  LanesController.index() function.
  routes:
    "": "index"

  # Fetch the data for the initial page, and display a view with it.
  index: ->
    lanes = new Lanes()
    board = new LanesIndex(model: lanes)
    $('body').append(board.el)
    lanes.fetch()
