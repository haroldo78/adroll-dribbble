Collections.Pictures = Backbone.Paginator.requestPager.extend(

  model: Models.Picture

  initialize: (models,options)->
    @list = options.list

  paginator_core:
    type: 'GET'
    dataType: 'jsonp'
    url: ()->
      return "http://api.dribbble.com/shots/#{@list}"

  paginator_ui:
    firstPage: 1
    currentPage: 1
    perPage: 12
    totalPages: 10

  server_api:
    'page': ()->
      return @currentPage
    'per_page': ()->
      return @perPage

  parse: (res)->
    return res.shots

)