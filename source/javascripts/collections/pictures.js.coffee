Collections.Pictures = Backbone.Paginator.requestPager.extend(

  model: Models.Picture

  paginator_core:
    type: 'GET'
    dataType: 'jsonp'
    url: 'http://api.dribbble.com/shots/popular'

  paginator_ui:
    firstPage: 0
    currentPage: 0
    perPage: 12
    totalPages: 1

  server_api:
    'page': ()->
      return @currentPage
    'per_page': ()->
      return @perPage

  parse: (res)->
    return res.shots

)