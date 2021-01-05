#!/usr/bin/env bash

~/.config/sway/scripts/turn_off_screen.sh &
xhost si:localuser:root &
foot --server &
mkfifo /tmp/swaytmp/wobpipe &
sleep 1
kill $(pidof pulseaudio)
pulseaudio &
waybar &
ibus-daemon &
# Auto starts after 2 seconds upon login
sleep 2
mako &
~/.config/sway/scripts/battery_notify.sh &
archbox megasync &

# Auto starts after 15 seconds upon login
sleep 13

while true; do
  ~/.config/sway/scripts/covid-id.sh
  sleep 600
done
