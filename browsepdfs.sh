#!/bin/sh
FILE="`find ~/Downloads ~/stuff ~/pdfs ~/Documents -name \*.pdf |dmenu -i -l 40`"
if [ "$FILE" ] ; then
    okular "$FILE"
fi
