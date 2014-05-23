# Description:
#   Little script to see what Hubot thinks is your name
#
# Commands:
#   hubot what's my name -> Responds with the hipchat username
#   hubot what's my mention_name -> Responds with the hipchat username
#   hubot set my mention_name to @foo -> sets your @mention name for HipChat purposes

Util = require "util"

who_am_i = (msg) -> 
  user = robot.brain.userForName(msg.message.user.id)
  msg.send Util.inspect(user, false, 4)

module.exports = (robot) ->
  robot.respond /what'?s.*my.*name/i, (msg) ->
    inspect = Util.inspect(msg.message.user, false, 4)
    msg.send msg.message.user.name 
    msg.send msg.message.user.mention_name 
    msg.send inspect

  robot.respond /(set) (my) (mention_name to) (.+)/i, (msg) -> 
    user = robot.brain.userForName(msg.message.user.id)
    mention_name = msg.match[4].trim()
    msg.send "Before state: #{Util.inspect(user, false, 4)}"
    user.mention_name = mention_name
    msg.send "After state: #{Util.inspect(user, false, 4)}"

  robot.respond /who am i/i, (msg) -> 
    who_am_i(msg)
    console.log "Fired who_am_i"


