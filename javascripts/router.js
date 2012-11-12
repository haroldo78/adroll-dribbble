(function() {

  window.Router = Backbone.Router.extend({
    routes: {
      '': 'showPopular',
      'popular': 'showPopular',
      'debuts': 'showDebuts',
      'everyone': 'showEveryone'
    },
    showPopular: function() {
      return app.content.show(app.popularView);
    },
    showDebuts: function() {
      return app.content.show(app.debutsView);
    },
    showEveryone: function() {
      return app.content.show(app.everyoneView);
    }
  });

}).call(this);
