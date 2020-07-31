#!/bin/bash

CACHE_PATH=/tmp/swaytmp/wofiopened

if [ ! -e $CACHE_PATH ]; then
  wofi --show drun --hide-scroll --xoffset=3 --yoffset=3 --width=600 \
    --height=400 &
  touch $CACHE_PATH
else
  killall wofi && rm $CACHE_PATH
fi
