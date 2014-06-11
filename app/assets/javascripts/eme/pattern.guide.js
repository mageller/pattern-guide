var s,
PatternGuide = {

  settings: {
    patternList: $('ul.sg-nav'),
    viewPort: $('iframe#sg-viewport')
  },

  init: function() {
    s = this.settings;
    this.bindUIActions();
  },

  bindUIActions: function() {
    s.patternList.on("click", 'li a', function(e) {
      e.preventDefault();
      PatternGuide.loadPattern($(this).attr('href'));
    });
  },

  loadPattern: function(location) {
    s.viewPort.attr('src', location);
  }
};