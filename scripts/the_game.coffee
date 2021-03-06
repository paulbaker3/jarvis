class TheGame

  constructor: (@robot) ->
    @cache = {}

    @increment_responses = [
      "+10 coins!"
    ]

    @punch_responses = [
      "Bankrupted!!"
    ]

    @robot.brain.on 'loaded', =>
      if @robot.brain.data.thegame
        @cache = @robot.brain.data.thegame

  increment: (thing) ->
    @cache[thing] ?= 0
    @cache[thing] += 10
    @robot.brain.data.thegame = @cache

  bankrupt: (thing) ->
    @cache[thing] ?= 0
    @cache[thing] = 0
    @robot.brain.data.thegame = @cache

  cost: (thing, cost) ->
    @cache[thing] ?= 0
    @cache[thing] -= cost
    @robot.brain.data.thegame = @cache

  incrementResponse: ->
     @increment_responses[Math.floor(Math.random() * @increment_responses.length)]

  bankruptResponse: ->
     @bankrupt_responses[Math.floor(Math.random() * @punch_responses.length)]

  selfDeniedResponses: (name) ->
    @self_denied_responses = [
      "Hey @all ! #{name} is a cheater!"
    ]

  get: (thing) ->
    k = if @cache[thing] then @cache[thing] else 0
    return k

  sort: ->
    s = []
    for key, val of @cache
      s.push({ name: key, thegame: val })
    s.sort (a, b) -> b.thegame - a.thegame

  top: (n = 5) ->
    sorted = @sort()
    sorted.slice(0, n)

  bottom: (n = 5) ->
    sorted = @sort()
    sorted.slice(-n).reverse()

module.exports = (robot) ->
  thegame = new TheGame robot

  robot.hear /pay\s(\S+[^+:\s])/, (msg) ->
    subject = msg.match[1].toLowerCase()
    if msg.message.user.mention_name.toLowerCase() != subject.replace("@","")
      thegame.increment subject
      msg.send "#{subject} #{thegame.incrementResponse()} (Coins: #{thegame.get(subject)})"
    else
      msg.send msg.random thegame.selfDeniedResponses(msg.message.user.name)

  robot.respond /coins( most)?$/i, (msg) ->
    verbiage = ["The richest"]
    for item, rank in thegame.top()
      verbiage.push "#{rank + 1}. #{item.name} - #{item.thegame}"
    msg.send verbiage.join("\n")

  robot.respond /coins least$/i, (msg) ->
    verbiage = ["The poorest"]
    for item, rank in thegame.bottom()
      verbiage.push "#{rank + 1}. #{item.name} - #{item.thegame}"
    msg.send verbiage.join("\n")

  robot.respond /coins (\S+[^-\s])$/i, (msg) ->
    match = msg.match[1].toLowerCase()
    if match != "most" && match != "least"
      msg.send "\"#{match}\" has #{thegame.get(match)} coins."

  robot.hear /bankrupt\s(\S+[^+:\s])/, (msg) ->
    subject = msg.match[1].toLowerCase()
    sender = "@#{msg.message.user.mention_name}"
    if thegame.get(sender) >= 100
      thegame.bankrupt subject
      msg.send "#{subject} #{thegame.punchResponse()} (Coins: #{thegame.get(subject)})"
    else
      msg.send "You can't afford this, #{sender}!"
