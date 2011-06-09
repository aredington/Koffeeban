this.NewCard = Backbone.View.extend
  tagName: "div"
  id: "new_card"
  initialize: ->
    _.bindAll(@,"render")

  render: ->
    $(@el).append(KoffeeTemplates.newCard)
    @
