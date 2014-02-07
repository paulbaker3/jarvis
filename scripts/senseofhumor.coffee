# Description:
#   Jarvis's Sense of Humor
#
# Dependencies:
#   None
#
# Configuration:
#   None 
#
# Commands:
#   LOL, LMAO, ROFL - Hubot will laugh too
#
# Author:
#   paulbaker3

laugh_track = [
  "hahaha",
  "tooo funny!",
  "I don't get it guys", 
  ":)",
  "Good times... good times", 
  "http://www.meme-rage-comics.com/images/comics/like_a_sir_lql.jpg", 
  "http://cf.chucklesnetwork.agj.co/items/1/1/1/4/6/not-sure-if-actually-laughing-or-just-typing-lol.jpg",
  "http://memecrunch.com/meme/7YSB/don-t-know-if-you-re-laughing-with-me/image.png"
]

module.exports = (robot) ->

  regex = /(lol|rolf|lmao|lolz)/i

  robot.hear regex, (msg) ->
    msg.send msg.random laugh_track
