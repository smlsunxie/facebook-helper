FB = require("fb")


exports = module.exports = {}

exports.getFriends = (userid, token, cb) ->

  FB.setAccessToken(token)
  FB.api userid + '/friends',  (res) ->
    return cb(null, res.data)
