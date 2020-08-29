#!/bin/bash

waybar &
lxpolkit &
~/.config/sway/scripts/turn_off_screen.sh &
xhost si:localuser:root &
foot --server &
#~/.config/sway/scripts/fade.py &
# Auto starts after half a second.

sleep 0.5
# /usr/bin/pulseaudio &
# /usr/bin/waybar &
# /usr/bin/alacritty &
# ~/.config/sway/scripts/wallpaper_update.sh &

# Auto starts after 5 seconds upon login
sleep 4.5
mako &
~/.config/sway/scripts/battery_notify.sh &
# /usr/bin/blueman-applet &
# /bin/mega-cmd-server &
env QT_QPA_PLATFORM= megasync &
radeon-profile &
hp-systray &

# Auto starts after 15 seconds upon login
sleep 14.5

while true; do
  ~/.config/sway/scripts/covid-id.sh
  sleep 600
done
