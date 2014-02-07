# Description:
#   Force Push Listener
#
# Dependencies:
#   None
#
# Configuration:
#   None 
#
# Commands:
#   force push -- jarvis will post an epic force push
#
# Author:
#   ethanwelborn

force_pushes = [
  "http://images.figure.fm/cgm/images/post/20100730/14068/111745/large/79613f833d3cc97d677901c4460db038.gif",
  "http://i241.photobucket.com/albums/ff174/lhagin18/force_push_2.gif",
  "http://i2.kym-cdn.com/photos/images/masonry/000/014/559/Force_Push_Bike_2.gif",
  "http://images.figure.fm/cgm/images/post/20100730/14068/111784/large/aa483b034beb109c1b519164a4d87f16.gif",
  "http://images.figure.fm/cgm/images/post/20100730/14068/111782/large/495f2c1b5dab2cda2e9cdbe7994f5c70.gif",
  "http://i1.kym-cdn.com/photos/images/newsfeed/000/014/538/5FCNWPLR2O3TKTTMGSGJIXFERQTAEY2K.gif",
  "http://i2.kym-cdn.com/photos/images/masonry/000/196/749/tumblr_luaj77Qaoa1qzrlhgo1_400.gif",
  "https://i.chzbgr.com/maxW500/4668226304/h5EE95D52/"
]

module.exports = (robot) ->

  regex = /force push/i

  robot.hear regex, (msg) ->
    msg.send msg.random force_pushes
