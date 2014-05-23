# Description:
#   Messing around with the YouTube API.
#
# Commands:
#   hubot youtube me <query> - Searches YouTube for the query and returns the video embed link.
module.exports = (robot) ->
  robot.respond /(W|w)hat's\smy\sname/i, (msg) ->
    msg.send msg.message.user.name    

