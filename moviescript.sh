#!/bin/sh
MOVIE="`find ~/Downloads -name \*.mp4 -or -name \*.avi -or -name \*.mkv |dmenu -i -l 40`"
if [ "$MOVIE" ] ; then
    mplayer -fs "$MOVIE"
fi
