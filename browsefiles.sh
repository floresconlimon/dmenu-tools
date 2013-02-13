#!/bin/sh
FILE="`find ~/code/ ! \( -type d -name builds -prune \) |dmenu -i -l 40`"
if [ "$FILE" ] ; then
    emacsclient -c "$FILE"
fi
