#!/bin/sh
set -e

# Get the current playlist
format="%artist% - %title%"
playlist="$(mpc playlist -f "$format")"

# Pipe the playlist to dmenu, catch name
name="$(echo "$playlist" | dmenu -i -l 40"$@")"

# Get the playlist position of the name with sed
songnum="$(echo "$playlist" | sed -n "/${name}/=")"

# Play the song
mpc play $songnum

notify-send "`mpc current`"
