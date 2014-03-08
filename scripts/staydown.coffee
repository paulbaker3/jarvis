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
#   stay down - Display a picture of ensuing pain
#
# Author:
#   pbaker

pictures = [
  "https://s3.amazonaws.com/uploads.hipchat.com/66880/467015/gYQ4yes3BKwEjse/ali_famous.jpg",
  "https://s3.amazonaws.com/uploads.hipchat.com/66880/467015/teRhgWjZrcL1bNs/ali_stay_down.jpg",
  "https://s3.amazonaws.com/uploads.hipchat.com/66880/467015/8AuxZAKXW8r5uE9/ali_strong_right.jpg"
]

module.exports = (robot) ->

  regex = /stay down/i

  robot.hear regex, (msg) ->
    msg.send msg.random pictures