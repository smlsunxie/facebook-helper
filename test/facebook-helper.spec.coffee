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
    token = "CAACEdEose0cBADzLdVf5VZAapEDwp5X1Iq75gjZCl07DgauZC6rqp3juLr35p0yfBvwGiQusypCvjnWHczUXbfX81YbdPupjmTHM8ZB1vJZBDGI19uMnIjtZCZB5zrHmr0NNaAfqZAjtCrqw8qtafr8Ung01ae8w88I4Afx5nG4RiyBMqvil0lVrWTbUZAlTFMj5XX1Hia3ORlSpatZBXZCXOd881fGzc1ZCVd8ZD"

    facebookHelper.getFriends userId, token, (error, friends) ->
      console.log "friends", friends
      (friends isnt undefined).should.be.true
      friends.should.be.Array
      friends[0].should.have.keys "name", "id"

      done()
