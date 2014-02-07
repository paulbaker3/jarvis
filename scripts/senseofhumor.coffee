# Description:
#   Jarvis's Sense of Humor
#
# Dependencies:
#   None
#
# Configuration:
#   None 
#
# Commands:
#   LOL, LMAO, ROFL - Hubot will laugh too
#
# Author:
#   paulbaker3

laugh_track = [
  "hahaha",
  "tooo funny!",
  "I don't get it guys", 
  ":)",
  "Good times... good times"
]

module.exports = (robot) ->

  regex = /(lol|rolf|lmao|lolz)?/i

  robot.hear regex, (msg) ->
    msg.send msg.random laugh_track
