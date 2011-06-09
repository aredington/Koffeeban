this.KoffeeTemplates = {
  templatesUrls:
    lane: "/templates/lane"
    newCard: "/templates/new_card"
    application: "/templates/application"
  triggerReady: ->
    @trigger("ready")saldkf
  init: ->
    _.after(_.keys(@templatesUrls).length, @triggerReady)
    _.each(@templatesUrls, (path, name) ->
      $.get path, (data) ->
        KoffeeTemplates[name] = data
        KoffeeTemplates.triggerReady()
    )
}
_.extend(KoffeeTemplates, Backbone.Events)
