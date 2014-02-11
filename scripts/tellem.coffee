# Description:
#   Tell 'em, tells 'em what's up 
#
# Dependencies:
#   None
#
# Configuration:
#
# Commands:
#
# Notes:
#
# Author:
#   paulbaker3 

whats_up = [
    "% is freakin' huge.", 
    "% just got his lift on. Look out.", 
    "% is feeling like a bamf."
]

module.exports = (robot) ->
    robot.hear /(tell them)/i, (msg) ->
        whatup = msg.random whats_up 
        msg.send whatup.replace "%", msg.message.user.name
