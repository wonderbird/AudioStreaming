set("log.stdout",true)
set("log.file",false)

s = playlist("combat")

output.icecast(%mp3,
  fallible=true,
  host="localhost",
  port=8000,
  password="AbAi-!4HyBL@GC.okpq3@Ljs",
  mount="combat",
  s)
