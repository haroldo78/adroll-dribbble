(function() {

  window.Models = new Object();

}).call(this);
(function() {

  Models.Picture = Backbone.RelationalModel.extend({
    urlRoot: "http://api.dribbble.com/shots/popular"
  });

}).call(this);
