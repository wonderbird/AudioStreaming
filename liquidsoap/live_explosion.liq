set("log.stdout",true)
set("log.file",false)

s = single("Explosion.mp3")

output.icecast(%mp3,
  fallible=true,
  host="localhost",
  port=8000,
  password="AbAi-!4HyBL@GC.okpq3@Ljs",
  mount="live",
  s)
