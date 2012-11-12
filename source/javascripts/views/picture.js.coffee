Views.Picture = Backbone.Marionette.ItemView.extend(
  template: 'picture'
  tagName: 'div'

  events:
    'mouseenter .pic': 'show_info'
    'mouseleave .pic': 'hide_info'

  modelBindings:
    image_teaser_url:
      selector: '[name=image_teaser_url]'
      elAttribute: 'src'
    title:
      selector: '[name=title]'

  initialize: ()->
    @$el.addClass('pic_item')
    @modelBinder = new Backbone.ModelBinder()

  onShow: ()->
    @modelBinder.bind(@model, @el, @modelBindings)

  show_info: ()->
    @$('.pic_header').slideDown()
    @$('.pic_footer_name').animate(
      width: 'show'
    )

  hide_info: ()->
    @$('.pic_header').slideUp()
    @$('.pic_footer_name').animate(
      width: 'hide'
    )

)