this.Application = Backbone.View.extend
  tagName: "div"
  id: "app"
  initialize: ->
    _.bindAll(@,"render")

  render: ->
    $(@el).append(KoffeeTemplates.application)
    @
