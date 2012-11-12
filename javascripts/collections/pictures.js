(function() {

  Collections.Pictures = Backbone.Paginator.requestPager.extend({
    model: Models.Picture,
    initialize: function(models, options) {
      return this.list = options.list;
    },
    paginator_core: {
      type: 'GET',
      dataType: 'jsonp',
      url: function() {
        return "http://api.dribbble.com/shots/" + this.list;
      }
    },
    paginator_ui: {
      firstPage: 1,
      currentPage: 1,
      perPage: 12,
      totalPages: 10
    },
    server_api: {
      'page': function() {
        return this.currentPage;
      },
      'per_page': function() {
        return this.perPage;
      }
    },
    parse: function(res) {
      return res.shots;
    }
  });

}).call(this);
