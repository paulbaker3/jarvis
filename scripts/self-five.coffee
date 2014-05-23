# Description:
#   Self-Five
#
#   Every once in a while, you just hafta self-five
#
# Dependencies:
#   None
#
# Configuration:
#
# Commands:
#   mention self-five, self five, or any thing that matches self*five
#
# Author:
#   pbaker

pictures = [
  "https://www.youtube.com/watch?v=kMUkzWO8viY",
  "https://s3.amazonaws.com/uploads.hipchat.com/66880/467015/fmpnfnOx8kwgiQU/angry_self_five.gif",
  "https://s3.amazonaws.com/uploads.hipchat.com/66880/467015/G1sZw1NtSvJ1lM1/mental_self_five.gif",
  "https://s3.amazonaws.com/uploads.hipchat.com/66880/467015/sZWieM2At0k2YqO/self_five.gif",
  "https://s3.amazonaws.com/uploads.hipchat.com/66880/467015/RxlD2FUB65ZiLrH/self_five2.gif"
]

module.exports = (robot) ->

  regex = /self.*five/i

  robot.hear regex, (msg) ->
    msg.send msg.random pictures