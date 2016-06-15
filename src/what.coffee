# Description:
#   Samuel L. Jackson responding to the phrase 'what?'.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   what? - English, motherfucker, do you speak it?
#
# Author:
#   freeman

response = [
  "http://i.imgur.com/tYIJPLZ.gif",
  "http://replygif.net/i/1353.gif"
]

module.exports = (robot) ->

  regex = /what\?/i

  robot.hear regex, (msg) ->
    if robot.auth.hasRole(msg.envelope.user, 'what')
      msg.send msg.random response
