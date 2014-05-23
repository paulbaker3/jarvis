# Description:
#   Little script to see what Hubot thinks is your name
#
# Commands:
#   hubot what's my name -> Responds with the hipchat username
#   hubot what's my mention_name -> Responds with the your @mention name for a chat client
#   hubot set my mention_name to <foo> -> sets your @mention name for a chat client
#   hubot set <user.id> to <name> -> sets the user.name for a give user.id
#   hubot who am I -> returns the json object from hubot's brain associated with your user.id

Util = require "util"

who_am_i = (robot, msg) -> 
  user = robot.brain.userForName(msg.message.user.id)
  Util.inspect(user, false, 4)

module.exports = (robot) ->
  robot.respond /what'?s.*my.*name/i, (msg) ->
    msg.send msg.message.user.name 

  robot.respond /what'?s.*my.*mention_name/i, (msg)  -> 
    msg.send msg.message.user.mention_name 

  robot.respond /set (.+)'s name to (.+)/i, (msg) -> 
    user_id = msg.match[1].trim()
    name_to_set = msg.match[2].trim()
    user = robot.brain.userForName(user_id)
    msg.send "Before state: #{who_am_i(robot,msg)}"
    user.name = name_to_set
    msg.send "After state: #{who_am_i(robot,msg)}"

  robot.respond /set my mention_name to (.+)/i, (msg) -> 
    user_id = robot.brain.userForName(msg.message.user.id)
    mention_name = msg.match[1].trim()
    msg.send "Before state: #{who_am_i(robot,msg)}"
    user.mention_name = mention_name
    msg.send "After state: #{who_am_i(robot,msg)}"

  robot.respond /who am i/i, (msg) -> 
    msg.send who_am_i(robot, msg)


