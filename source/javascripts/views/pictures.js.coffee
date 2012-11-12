#= require views/picture

Views.Pictures = Backbone.Marionette.CompositeView.extend(
  template: 'pictures'
  tagName: 'div'
  itemView: Views.Picture
  itemViewContainer: '.list_content'

  onShow: ()->
    @collection.fetch()

  onRender: ()->
    if ($(window).height()) >= @$('.list_content').height()
      @collection.requestNextPage({add:true})
    $(window).scroll(()=>
      if ($(window).height() + $(window).scrollTop() - @$('.list_content').offset().top) >= @$('.list_content').height()
        @collection.requestNextPage({add:true})
    )

)