# Description:
#   Baby goats, motherfucker
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot babygoat me - Get a baby goat

module.exports = (robot) ->

  robot.respond /(babygoat me|baby goat me)/i, (msg) ->
    msg.http("http://liamdanger.github.io/babygoat-motherlode/manifest.json")
      .get() (err, res, body) ->
        data = JSON.parse(body)
        babygoats = data.babygoats
        howManyGoats = babygoats.length
        whichGoat = Math.floor(Math.random() * (howManyGoats))
        msg.send babygoats[whichGoat]