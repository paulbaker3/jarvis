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
    "% just pumped some iron and is looking freakin' huge.", 
    "% just got his lift on. Look out.", 
    "% is feeling like a bamf.",
    "% just got all swoll."
]

module.exports = (robot) ->
    robot.hear /tell (th)?em( what(')?s up)?/i, (msg) ->
        whatup = msg.random whats_up 
        msg.send whatup.replace "%", msg.message.user.name
