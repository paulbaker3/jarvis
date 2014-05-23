Number::seconds = ->
  @ * 1000
  
Number::minutes = ->
  @seconds() * 60
  
Number::minute = Number::minutes
  
Number::hours = ->
  @minutes() * 60
  
Number::hour = Number::hours
 
Number::ago = ->
  new Date(new Date().valueOf() - @)
  
Number::from_now = ->
  new Date(new Date().valueOf() + @)