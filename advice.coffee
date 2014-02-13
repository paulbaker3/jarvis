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
  "http://weknowmemes.com/wp-content/uploads/2012/09/life-is-hard-right-wrong.jpg", 
  "https://s3.amazonaws.com/uploads.hipchat.com/66880/467015/IhFeYreznSzNfbS/UseTheForceHarryGandalf.jpg"
]

module.exports = (robot) ->

  regex = /(advice|advise|encouragement|encourage)/i

  robot.hear regex, (msg) ->
    msg.send msg.random advice
