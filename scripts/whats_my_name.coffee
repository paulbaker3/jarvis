# Description:
#   Little script to see what Hubot thinks is your name
#
# Commands:
#   Hubot what's my name -> Responds with the hipchat username

Util = require "util"

module.exports = (robot) ->
  robot.respond /what(')?s.*my.*sname/i, (msg) ->
    inspect = Util.inspect(msg.message.user, false, 4)
    msg.send msg.message.user.name 
    msg.send inspect
    msg.send "foo"

  robot.respond /(set) (my) (@mention to) (.+)/i, (msg) -> 
    at_mention = msg.match[4].trim()
    msg.send at_mention