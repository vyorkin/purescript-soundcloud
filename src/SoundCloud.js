var SC = require('soundcloud')

exports._initialize = function(opts) {
  return function() {
    return SC.initialize(opts)
  }
}

// exports._connect = SC.connect ??
