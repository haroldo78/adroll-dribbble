window.Router = Backbone.Router.extend(

  routes:
    '':         'showPopular'
    'popular':  'showPopular'
    'debuts':   'showDebuts'
    'everyone': 'showEveryone'

  showPopular: ()->
    app.content.show(app.popularView)

  showDebuts: ()->
    app.content.show(app.debutsView)

  showEveryone: ()->
    app.content.show(app.everyoneView)

)