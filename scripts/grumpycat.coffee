# Description:
#   Load a random Grumpy Cat from an array of images.
#   Based on pugme.
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot grumpycat me - Receive a Grumpy Cat
#   hubot grumpycat bomb N - get N Grumpy Cats
#
# Author:
#   trey

cats = [
  "http://mlkshk.com/r/M6EO.gif", # rabbit in a hat
  "http://mlkshk.com/r/M17S.gif", # dress
  "http://mlkshk.com/r/M15O.gif", # le mis
  "http://mlkshk.com/r/M01A.gif", # cartoons
  "http://mlkshk.com/r/LXP2.gif", # grumpy tardar sauce
  "http://mlkshk.com/r/LWNG.gif", # grandma got run over
  "http://mlkshk.com/r/LVVR.gif", # double deal with it
  "http://mlkshk.com/r/LV0S.gif", # mural
  "http://mlkshk.com/r/LUYE.gif", # stahp
  "http://mlkshk.com/r/LUO2.gif", # good
  "http://mlkshk.com/r/LSWD.gif", # Tardar Bonepart
  "http://mlkshk.com/r/LPCN.gif", # drawing
  "http://mlkshk.com/r/LLVD.gif", # terrible time of the year
  "http://mlkshk.com/r/LKTG.gif", # Citizen Kane
  "http://mlkshk.com/r/LEF8.gif", # emotions
  "http://mlkshk.com/r/LEFR.gif", # skate deck
  "http://mlkshk.com/r/L337.gif", # look askance
  "http://mlkshk.com/r/KV8K.gif", # sitting
  "http://mlkshk.com/r/KU1S.gif", # 3 grump moon
  "http://mlkshk.com/r/KRBA.gif", # rabbit painting
  "http://mlkshk.com/r/KL19.gif",  # lying on the ground
  "https://s3.amazonaws.com/uploads.hipchat.com/66880/467015/OsXrazF6cu4Huqd/3-11-grumpy-cat-in-sun-Facebook-630x565.png",
  "https://s3.amazonaws.com/uploads.hipchat.com/66880/467015/5X30LCFOsrBJVMA/284578-grumpy-cat.gif",
  "https://s3.amazonaws.com/uploads.hipchat.com/66880/467015/UPuuwssF87vbDAC/article-0-18C6F23000000578-343_306x454.jpg",
  "https://s3.amazonaws.com/uploads.hipchat.com/66880/467015/8nJ6gKmtBjqKGmg/Asteroid-Grumpy-Cat.jpg",
  "https://s3.amazonaws.com/uploads.hipchat.com/66880/467015/vjd0iNJqyDWDAWz/beautiful.jpg",
  "https://s3.amazonaws.com/uploads.hipchat.com/66880/467015/Uo7CeFp2mkCUBUt/best-funniest-grumpy-cat-2.jpg",
  "https://s3.amazonaws.com/uploads.hipchat.com/66880/467015/TQlJvgGCXI4EVRA/best-funniest-grumpy-cat-3.jpg",
  "https://s3.amazonaws.com/uploads.hipchat.com/66880/467015/3Pjd8BEH1IEm0iI/best-funniest-grumpy-cat-5.jpg",
  "https://s3.amazonaws.com/uploads.hipchat.com/66880/467015/KvdORl0YSP4OlZc/best-funniest-grumpy-cat-6.jpg",
  "https://s3.amazonaws.com/uploads.hipchat.com/66880/467015/sCwA0VK26OlgGvb/best-funniest-grumpy-cat-6.jpg",
  "https://s3.amazonaws.com/uploads.hipchat.com/66880/467015/2PeKUA45IpPBAAO/best-funniest-grumpy-cat-7.jpg",
  "https://s3.amazonaws.com/uploads.hipchat.com/66880/467015/0bOKRWfMopQmDPj/Funny-Cats-Top-49-Most-Funniest-Grumpy-Cat-Quotes-24.png",
  "https://s3.amazonaws.com/uploads.hipchat.com/66880/467015/IMynG9c00Z1JAgR/funny-Grumpy-cat-garden-fire.jpg",
  "https://s3.amazonaws.com/uploads.hipchat.com/66880/467015/DxiwkxXGKSKqJSC/grumpy%20cat%204.jpg",
  "https://s3.amazonaws.com/uploads.hipchat.com/66880/467015/PBrIvAG8fQQzLOq/grumpy_cat_motivational_by_ardieum-d67qb38.jpg",
  "https://s3.amazonaws.com/uploads.hipchat.com/66880/467015/Qv5fxXTDiCMMNIl/grumpy-cat_2_0.jpg",
  "https://s3.amazonaws.com/uploads.hipchat.com/66880/467015/dHDEipLhGXD9htL/Grumpy-Cat-01.jpg",
  "https://s3.amazonaws.com/uploads.hipchat.com/66880/467015/y4vOcYuIMNfxSrk/grumpy-cat-8.jpg",
  "https://s3.amazonaws.com/uploads.hipchat.com/66880/467015/d3qm0uCxAHh62DP/Grumpy-cat-and-bingo.jpg",
  "https://s3.amazonaws.com/uploads.hipchat.com/66880/467015/JgliYKrF7dWSyKm/Grumpy-Cat-Good-1.jpeg",
  "https://s3.amazonaws.com/uploads.hipchat.com/66880/467015/V7UrfhIxQcPHEIS/grumpy-cat-lemonade.jpg",
  "https://s3.amazonaws.com/uploads.hipchat.com/66880/467015/O3qbPi48YehpKjC/Grumpy-Cat-Purina.jpg"
]

module.exports = (robot) ->
  robot.respond /grump(y|y\s)?cat/i, (msg) ->
    msg.send cats[Math.floor(Math.random()*cats.length)]

  robot.respond /grump(y|y\s)?cat bomb( (\d+))?/i, (msg) ->
    count = msg.match[2] || 5
    for i in [1..count] by 1
      msg.send cats[Math.floor(Math.random()*cats.length)]

  robot.respond /how many grump(y)?cats are there/i, (msg) ->
    msg.send "There are #{cats.length} grumpycats."
