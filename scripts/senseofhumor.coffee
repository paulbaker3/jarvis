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
  "http://memecrunch.com/meme/7YSB/don-t-know-if-you-re-laughing-with-me/image.png", 
  "http://www.lindsaytampabay.com/wp-content/uploads/2012/11/724596204_6a4432f74e.jpg", 
  "http://cuteoverload.files.wordpress.com/2009/08/ground_squirrel_560.jpg"
]

module.exports = (robot) ->

  regex = /(lol|rolf|rofl|lmao|lolz)/i

  robot.hear regex, (msg) ->
    msg.send msg.random laugh_track
