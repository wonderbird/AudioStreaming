set("log.stdout",true)
set("log.file",false)

ambient = playlist("ambient")

full = fallback(track_sensitive=false,
  [input.http("http://localhost:8000/live"),
    input.http("http://localhost:8000/combat"),
    ambient])

output.icecast(%mp3,
  fallible=true,
  host="localhost",
  port=8000,
  password="AbAi-!4HyBL@GC.okpq3@Ljs",
  mount="stream",
  full)
