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
  "https://s3.amazonaws.com/uploads.hipchat.com/66880/802906/1FK3nzuRzbyR5s3/tumblr_mnpcqlbJQ51rah8c5o1_500.gif",
  "https://s3.amazonaws.com/uploads.hipchat.com/66880/802906/LkrSnSZRSLbSOlc/tumblr_mo8odj4LZb1qasthro1_400.gif",
  "https://s3.amazonaws.com/uploads.hipchat.com/66880/802906/zrSr9wdVuLZ1N04/tumblr_mo8pua3i3q1qasthro1_400.gif"
]

module.exports = (robot) ->

  regex = /hambone|hamboning/i

  robot.hear regex, (msg) ->
    msg.send msg.random pictures