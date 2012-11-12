(function() {

  Backbone.Marionette.Renderer.render = function(template, data) {
    if (!JST[template]) {
      throw "Template '" + template + "' not found!";
    }
    return JST[template](data);
  };

}).call(this);
(function() {
  var _ref;

  if ((_ref = window.JST) == null) {
    window.JST = {};
  }

  window.JST['picture'] = function(context) {
    return (function() {
      var $o;
      $o = [];
      $o.push("<div class='pic'>\n  <div class='pic_header' name='title'></div>\n  <img name='image_teaser_url' src='/images/ajax-loader.gif'>\n  <div class='pic_footer'>\n    <div class='left pic_footer_name' name='player_name'></div>\n    <div class='left pic_footer_info pic_footer_likes'>\n      <div class='icon_heart left'></div>\n      <div class='left pic_footer_info' name='likes_count'></div>\n    </div>\n    <div class='left pic_footer_comments pic_footer_info'>\n      <div class='icon_comment left'></div>\n      <div class='left pic_footer_info' name='comments_count'></div>\n    </div>\n  </div>\n</div>");
      return $o.join("\n").replace(/\s(\w+)='true'/mg, ' $1').replace(/\s(\w+)='false'/mg, '');
    }).call(window.HAML.context(context));
  };

}).call(this);
(function() {
  var _ref;

  if ((_ref = window.JST) == null) {
    window.JST = {};
  }

  window.JST['pictures'] = function(context) {
    return (function() {
      var $c, $e, $o;
      $e = window.HAML.escape;
      $c = window.HAML.cleanValue;
      $o = [];
      $o.push("<div class='left list_content'></div>\n<div class='left list_footer'>\n  <div class='list_footer_info'>" + ($e($c("Scroll For More"))) + "</div>\n</div>");
      return $o.join("\n").replace(/\s(\w+)='true'/mg, ' $1').replace(/\s(\w+)='false'/mg, '');
    }).call(window.HAML.context(context));
  };

}).call(this);
