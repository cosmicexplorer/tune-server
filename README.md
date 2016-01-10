tune-server
===========

node app to index songs and play them

# TODO

1. must be able to play and read metadata from files of all these types:
    - important:
        - flac
        - m4a
        - m4v (maybe)
        - mp3
        - mp4
        - ogg
    - less important:
        - aiff
        - wav
        - au
        - webm
        - wma
        - wmv

2. must be able to read playlists:
    - important:
        - cue
        - m3u
        - m3u8
    - less important:
        - vlc
        - wpl
        - pls

3. must be able to produce path to corresponding album art for a given song
    - basically find some image in the folder, and if there are multiple, then prefer one which is named `cover.jpg`, if available
    - images are of type:
        - jpg
        - png
        - bmp
