Speaker = require 'speaker'
play = require './play'

file = process.argv[2]

throw new Error "no file given!" unless file?

play.streamMusicFile file, (stream, fmt) -> stream.pipe new Speaker fmt
