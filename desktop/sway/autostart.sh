#!/usr/bin/env bash

~/.config/sway/scripts/turn_off_screen.sh &
swaybg -i ~/.config/sway/images/wallpaper.png &
xhost si:localuser:root &
foot --server &
#kill $(pidof pulseaudio)
#pulseaudio &
waybar &
ibus-daemon &
# Auto starts after 2 seconds upon login
sleep 2
archbox --mount-runtime-only
mako &
~/.config/sway/scripts/battery_notify.sh &
archbox megasync &
mpd &

# Auto starts after 15 seconds upon login
sleep 13
