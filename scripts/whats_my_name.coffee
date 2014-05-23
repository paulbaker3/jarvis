# Description:
#   Little script to see what Hubot thinks is your name
#
# Commands:
#   Hubot what's my name -> Responds with the hipchat username
module.exports = (robot) ->
  robot.respond /(W|w)hat's\smy\sname/i, (msg) ->
    msg.send msg.message.user.name    

