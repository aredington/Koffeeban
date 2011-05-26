//= require jquery
//= require jquery.simplemodal
//= require jquery_ujs
//= require underscore
//= require backbone
//= require koffee-templates
//= require models/lanes
//= require models/cards
//= require views/lanes-index
//= require views/new-card
//= require views/application
//= require controllers/lanes-controller
KoffeeTemplates.bind("ready", function() {
  new LanesController();
  Backbone.history.start();
})
KoffeeTemplates.init();
