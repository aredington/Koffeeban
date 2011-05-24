this.KoffeeTemplates = {
  templatesUrls:
    lane: "/templates/lane"
  triggerReady: ->
    @trigger("ready")
  init: ->
    _.after(_.keys(@templatesUrls).length, @triggerReady)
    _.each(@templatesUrls, (path, name) ->
      $.get path, (data) ->
        KoffeeTemplates[name] = data
        KoffeeTemplates.triggerReady()
    )
}
_.extend(KoffeeTemplates, Backbone.Events)
