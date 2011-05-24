this.Lane = Backbone.Model.extend
  # When a backbone model receives a JSON blob in
  # its constructor, it shoves all of the JSON properties
  # into an internal attributes hash. These are exposed by
  # get(name) and set(name, value) methods on the model.
  # You can directly access the attributes hash, but if
  # you shove values directly into it event propagation won't
  # happen. SO DON'T DO IT!
  name: ->
    @get("name")

# Lanes is a collection of multiple Lane instances
this.Lanes = Backbone.Collection.extend
  # Request URL with XHR to pull down, returns
  # a JSON blob.
  url: "/lanes.json"
  # Specify what this collection is a model of.
  # With this set, you can hand JSON blobs to the collection
  # and it will add new Backbone Models instantiated
  # from those JSON blobs.
  model: Lane
  # Parse accepts a JSON blob representing a collection of multiple
  # model objects. It returns a list of instantiated models. We get
  # an Array of JSON blobs back from Rails, so we can just shove
  # them in objects and we are off to the races.
  parse: (response)->
    _.map(response, (laneJson) ->
      new Lane(laneJson))
