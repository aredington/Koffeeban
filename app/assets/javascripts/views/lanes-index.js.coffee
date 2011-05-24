this.LanesIndex = Backbone.View.extend
  # Initialize is called at the end of the view
  # constructor to set up the new view. You can bind to
  # events on the model this view was constructed for,
  # and do other housekeeping tasks here.
  initialize: ->
    # bindAll accepts an object and a list of function names.
    # It then binds this in the body of each of those functions
    # to its first argument. In the example below, without using
    # bindAll this would evaluate to the collection firing the event
    # instead of the view to be rendered.
    _.bindAll(@,"render")
    # When a collection fetches its contents from the server, it
    # fires a "refresh" event upon successfully parsing the contents
    # of the response. We re-render this view when the contents change
    # to keep the presentation to the user up to date.
    @model.bind("refresh", @render)
  # Render is a no-op by default, but the intent is to stuff data
  # from the view's model into the HTML element the view is holding onto.
  # At this stage in the example app, we are simply logging all of the Lane
  # objects to the browser console.
  render: ->
    _.each(@model.models, (model) ->
      console.log(model))
