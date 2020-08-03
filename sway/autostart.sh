#!/bin/bash

/usr/bin/waybar &
/usr/bin/lxpolkit &
~/.config/sway/scripts/turn_off_screen.sh &
xhost si:localuser:root &

# Auto starts after half a second.

sleep 0.5
# /usr/bin/pulseaudio &
# /usr/bin/waybar &
# /usr/bin/alacritty &
# ~/.config/sway/scripts/wallpaper_update.sh &

# Auto starts after 5 seconds upon login
sleep 4.5
# /usr/bin/megasync &
/bin/mako &
~/.config/sway/scripts/battery_notify.sh &
# /usr/bin/blueman-applet &
/bin/mega-cmd-server &

# Auto starts after 15 seconds upon login
sleep 14.5

while true; do
  ~/.config/sway/scripts/covid-id.py
  sleep 600
done
