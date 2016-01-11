# functions to stream a file of some format into a pcm stream

fs = require 'fs'
lame = require 'lame'
errors = require './errors'

streamMusicFile = (filename, cb) ->
  extension = filename.match(/.*\.([^\.]+)$/)[1]
  unless extension?
    throw new errors.FiletypeError "no file extension for file #{filename}"
  pcmFn = streamFunctions[extension]
  unless pcmFn?
    throw new errors.FiletypeError "file extension #{extension} not recognized
  for streaming file #{filename}"
  pcmFn fs.createReadStream(filename), cb

# `cb' is a function accepting a pcm output stream and an audio format spec
# the audio format spec can be fed into the Speaker constructor
streamFunctions =
  'mp3': (fstream, cb) ->
    decoder = new lame.Decoder
    decodedStream = fstream.pipe(decoder)
    decodedStream.on 'format', (format) -> cb decodedStream, format

module.exports = {
  streamMusicFile
  streamFunctions
}
