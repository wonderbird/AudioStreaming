# Setting Up IceCast and liquidsoap for Music Streaming

This folder contains my music streaming configuration

## Prerequisites

### IceCast2 Streaming Server

- Install [IceCast2](https://www.icecast.org/) to `C:\Program Files (x86)\Icecast`
- In folder `C:\Program Files (x86)\Icecast` backup icecast.xml
- Copy over the `icecast.xml` from this directory

### liquidsoap Streaming Client

- Unzip [liquidsoap](https://www.liquidsoap.info/) to `C:\Program Files\liquidsoap-v1.4.4-win64`

## Running the Streaming Server

1. Put ambient sounds into the subdirectory "ambient"
2. Put combat sounds into the subdirectory "combat"
3. Execute "Run Icecast (Console)" from the start menu
4. Run "run_full_stream_with_ambient_fallback.bat" from the liquidsoap subdirectory

Any time you can trigger a special effect by running one of the `live_*.bat` files.

Any time you can switch to combat music by running `run_combat_stream.bat`.

## Stream Architecture

IceCast is configured such that 3 sources are allowed:

```
/live		is streamed only when you want a special effect to be played
/combat		is streamed only if you want combat music to be played
/stream		is the connection point for your listeners
```

The `/stream` is configured to relay the `/live` stream first.
If `/live` stream is empty then `/combat` is relayed.
If both `/live` and `/combat` are empty, then the ambient playlist is streamed.
