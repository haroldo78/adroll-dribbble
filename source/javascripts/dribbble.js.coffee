#= require_tree ./lib
#= require hamlcoffee
#= require models
#= require collections
#= require templates
#= require views

$(document).ready ()->
  window.app = new Backbone.Marionette.Application()
  app.popular = new Collections.Pictures({},{list: 'popular'})
  app.debut = new Collections.Pictures({},{list: 'debuts'})
  app.everyone = new Collections.Pictures({},{list: 'everyone'})

  # Application Regions
  app.addRegions(
    nav: '#nav'
    content: '#content'
  )

  # Show popular
  app.popular.fetch()
  app.popularView = new Views.Pictures({collection: app.popular})
  app.content.show(app.popularView)

  # Prepate debut
  app.debut.fetch()
  app.debut = new Views.Pictures({collection: app.debut})

  # Prepare everyone
  app.everyone.fetch()
  app.everyone = new Views.Pictures({collection: app.everyone})