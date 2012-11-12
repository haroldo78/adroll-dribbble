(function() {

  Views.Picture = Backbone.Marionette.ItemView.extend({
    template: 'picture',
    tagName: 'div',
    events: {
      'mouseenter .pic': 'show_info',
      'mouseleave .pic': 'hide_info'
    },
    modelBindings: {
      image_teaser_url: {
        selector: '[name=image_teaser_url]',
        elAttribute: 'src'
      },
      title: {
        selector: '[name=title]'
      },
      likes_count: {
        selector: '[name=likes_count]'
      },
      comments_count: {
        selector: '[name=comments_count]'
      },
      player: {
        selector: '[name=player_name]',
        converter: function(direction, value) {
          if (value != null) {
            return value.name;
          }
        }
      }
    },
    initialize: function() {
      this.$el.addClass('pic_item');
      return this.modelBinder = new Backbone.ModelBinder();
    },
    onShow: function() {
      return this.modelBinder.bind(this.model, this.el, this.modelBindings);
    },
    show_info: function() {
      this.$('.pic_header').slideDown();
      return this.$('.pic_footer_name').animate({
        width: 'show'
      });
    },
    hide_info: function() {
      this.$('.pic_header').slideUp();
      return this.$('.pic_footer_name').animate({
        width: 'hide'
      });
    }
  });

}).call(this);
