# Description:
#   Stay Down
#
#   Some bugs/ issues just won't learn. Have hubot tell 'em what's up.
#
# Dependencies:
#   None
#
# Configuration:
#
# Commands:
#   ooo (at least three times) - You got served
#
# Author:
#   pbaker

pictures = [
  "https://s3.amazonaws.com/uploads.hipchat.com/66880/802906/pQeo8xuZsdEo61B/giphy%20copy.gif",
  "https://s3.amazonaws.com/uploads.hipchat.com/66880/802906/V6tXdM30WEP48kv/giphy-1.gif",
  "https://s3.amazonaws.com/uploads.hipchat.com/66880/802906/eMWzQupRHVVnYgs/giphy-2%20copy.gif"
  "https://s3.amazonaws.com/uploads.hipchat.com/66880/802906/0tihLjY04Ug4zdV/giphy-2.gif"
  "https://s3.amazonaws.com/uploads.hipchat.com/66880/802906/F4qQ5gqqiWlmOyN/giphy.gif"
]

module.exports = (robot) ->

  regex = /o{3,100}/i

  robot.hear regex, (msg) ->
    msg.send msg.random pictures