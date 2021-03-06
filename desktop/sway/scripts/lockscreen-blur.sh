#!/usr/bin/env bash

grim -t png -c ~/.cache/lockscreen.png && blur_image -d /dev/dri/renderD128 \
    -p 6 -r 6 ~/.cache/lockscreen.png -o ~/.cache/lockscreen-blur.png
swaylock -f -i ~/.cache/lockscreen-blur.png --indicator-idle-visible \
    --disable-caps-lock-text --font Cantarell --font-size 1 --inside-color \
    00000000 --text-color 00000000 --text-ver-color 00000000 \
    --text-wrong-color 00000000 --inside-ver-color 00000000 \
    --inside-wrong-color 00000000 --separator-color 00000000 --line-color \
    00000000 --line-clear-color 00000000 --line-wrong-color 00000000 \
    --line-ver-color 00000000 --ring-color ffffff22 --ring-ver-color ffffff \
    --key-hl-color ffffff --ring-wrong-color ee4934 --ring-clear-color b7e252 \
    --inside-clear-color 00000000 --text-clear-color 00000000
