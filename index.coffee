###
#
#  anotherkite Kite for Koding
#  Author: ybrs 
#
#  This is an example kite with two methods:
#
#    - helloWorld
#    - fooBar
#
###
kite     = require "kd-kite"
manifest = require "./manifest.json"

kite.worker manifest,

  # This is a dummy method of the kite.
  helloWorld: ({name}, callback) ->
    
    return callback null, "Hello, I'm #{name}! This is anotherkite"

  # You can call another kites.
  fooBar: (options, callback) ->

    awesomekite = kite.require "awesomekite"
    awesomekite.run "helloWorld", name: "ybrs", (err, result)->
      callback err, result