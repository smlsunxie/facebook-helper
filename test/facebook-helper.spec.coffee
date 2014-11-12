require 'coffee-errors'

chai = require 'chai'
sinon = require 'sinon'
facebookHelper = require '../lib/facebook-helper.js'

expect = chai.expect
should = chai.should()

chai.use require 'sinon-chai'

describe 'facebook-helper', ->

  it "get friends list", (done) ->
    userId = "100000233810027"
    token = "CAACEdEose0cBAH3ovpJmJTD8RJnVvwMVN1L1WNtONYZB6jKLZAEXKUWS9DldoOa6zxuzWATFa3a0McAFzfKjRWXiI9ZBES9Fi4I4V5Ul8ycjb2QJyABZBh5Dtd3IwDbd4yUnMFJgjG5965M2hdHDZC7W8mTy665JLJdZCTyf9lFlXVHe4YUYRn5MASEZC2FWoeZAe9okG7bdgiDEb2ePd7d5N6Pgs8xwhF0ZD"

    facebookHelper.getFriends userId, token, (error, friends) ->
      friends.should.be.Array
      friends[0].should.have.keys "name", "id"

      done()
