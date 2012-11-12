#= require_tree ./lib
#= require hamlcoffee
#= require models
#= require collections
#= require templates
#= require views
#= require router

$(document).ready ()->
  window.app = new Backbone.Marionette.Application()
  app.popular = new Collections.Pictures({},{list: 'popular'})
  app.debuts = new Collections.Pictures({},{list: 'debuts'})
  app.everyone = new Collections.Pictures({},{list: 'everyone'})

  # Application Regions
  app.addRegions(
    nav: '#nav'
    content: '#content'
  )

  # Prepare popular
  app.popularView = new Views.Pictures({collection: app.popular})
  app.popular.fetch()

  # Prepate debut
  app.debutsView = new Views.Pictures({collection: app.debuts})
  app.debuts.fetch()

  # Prepare everyone
  app.everyoneView = new Views.Pictures({collection: app.everyone})
  app.everyone.fetch()

  # Router
  app.router = new Router(app)

  Backbone.history.start()