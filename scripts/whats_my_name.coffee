# Description:
#   Little script to see what Hubot thinks is your name
#
# Commands:
#   Hubot what's my name -> Responds with the hipchat username

Util = require "util"

module.exports = (robot) ->
  robot.respond /what'?s.*my.*name/i, (msg) ->
    inspect = Util.inspect(msg.message.user, false, 4)
    msg.send msg.message.user.name 
    msg.send inspect
    msg.send "foo"

  robot.respond /(set) (my) (mention_name to) (.+)/i, (msg) -> 
    user = robot.brain.userForName(msg.message.user.name )
    mention_mention = msg.match[4].trim()
    msg.send "Before state: #{Util.inspect(user, false, 4)}"
    user.mention_name = mention_name
    msg.send "Setting mention_name to #{mention_mention}"
    msg.send "After state: #{Util.inspect(user, false, 4)}"