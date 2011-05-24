//= require jquery
//= require jquery_ujs
//= require underscore
//= require backbone
//= require koffee-templates
//= require models/lanes
//= require views/lanes-index
//= require controllers/lanes-controller
KoffeeTemplates.bind("ready", function() {
  new LanesController();
  Backbone.history.start();
})
KoffeeTemplates.init();
