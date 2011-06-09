this.Card = Backbone.Model.extend
  name: ->
    @get("name")
  description: ->
    @get("description")

this.Cards = Backbone.Collection.extend
  url: "/cards.json"
  model: Card
  parse: (response) ->
    _.map(response, (cardJson) ->
      new Card(cardJson))

