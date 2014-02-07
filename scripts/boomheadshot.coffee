# Description:
#   Boom Headshot Listener 
#
# Dependencies:
#   None
#
# Configuration:
#   None 
#
# Commands:
#   boom headshot - Hubot will fetch a graphic worthy of your prowess
#
# Author:
#   paulbaker3

headshots = [
  "http://fc00.deviantart.net/fs70/f/2010/183/1/b/Boom__Headshot_by_Ikuei.jpg",
  "http://fc04.deviantart.net/fs37/f/2008/269/e/d/ORIGINAL__BOOM_HEADSHOT_by_Kuroi_Tsuki.jpg",
  "http://static3.wikia.nocookie.net/__cb20110703074742/custombionicle/images/7/7a/Boom_headshot.png",
  "http://static.fjcdn.com/gifs/BOOM_e5b587_320749.gif",
  "https://i.chzbgr.com/maxW500/4449799680/hA9A6088B/",
  "http://static.fjcdn.com/gifs/BOOM+HEADSHOT+.+HEADSHOT_b10945_4095920.gif",
  "http://static3.wikia.nocookie.net/__cb20110401133429/combatarms/images/8/88/Boom_headshot.jpg",
  "http://sd.keepcalm-o-matic.co.uk/i/keep-calm-and-boom-headshot-42.png",
  "http://www.fataldownflaw.com/wp-content/uploads/2011/11/boom-headshot.jpg",
  "http://static3.fjcdn.com/comments/BOOM+Headshot+_d8cedf9dd6a13d62cf0fc267b65d53f9.jpg",
  "http://static1.fjcdn.com/comments/4177484+_30d4f112335d18739b0590f46ae710fa.jpg",
  "http://www.operatorchan.org/vg/src/13797130073.jpg",
  "http://fc09.deviantart.net/fs51/f/2009/279/4/1/Boom_Headshot_by_PiratesLiveinAll.jpg",
  "http://bardzonudnyblog.files.wordpress.com/2013/09/boom___headshot_by_thecoffeekid.jpg"
]

module.exports = (robot) ->

  regex = /boom headshot/i

  robot.hear regex, (msg) ->
    msg.send msg.random headshots
