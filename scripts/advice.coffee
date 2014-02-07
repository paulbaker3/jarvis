# Description:
#   Jarvis's Advice on life
#
# Dependencies:
#   None
#
# Configuration:
#   None 
#
# Commands:
#   advice, give me advice
#
# Author:
#   reggiejones7

advice = [
  "http://weknowmemes.com/wp-content/uploads/2012/09/life-is-hard-right-wrong.jpg"
]

module.exports = (robot) ->

  regex = /(advice|give me advice)/i

  robot.hear regex, (msg) ->
    msg.send msg.random advice
