#!/usr/bin/env bash

swayidle -w timeout 300 '~/.config/sway/scripts/lockscreen-blur.sh' \
            timeout 600 'swaymsg "output * dpms off"' \
            resume 'swaymsg "output * dpms on"' \
            before-sleep '~/.config/sway/scripts/lockscreen-blur.sh'
