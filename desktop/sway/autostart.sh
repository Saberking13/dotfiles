#!/usr/bin/env bash

~/.config/sway/scripts/turn_off_screen.sh &
xhost si:localuser:root &
foot --server &
mkfifo /tmp/swaytmp/wobpipe &
archbox --mount-runtime-only
kill $(pidof pulseaudio)
pulseaudio &
waybar &

# Auto starts after 2 seconds upon login
sleep 2
mako &
~/.config/sway/scripts/battery_notify.sh &
#tail -f /tmp/swaytmp/wobpipe | wob --background-color '#FF2e3440' -t 2000 --bar-color '#ff81a1c1' -W 500 -H 20 -p 0 -o 0 --border-color '#FF575b61 ' -b 2 &
# /usr/bin/blueman-applet &
# /bin/mega-cmd-server &
archbox megasync &
#~/Apps/Telegram/Telegram -startintray &
#radeon-profile &
#hp-systray &

# Auto starts after 15 seconds upon login
sleep 13

while true; do
  ~/.config/sway/scripts/covid-id.sh
  sleep 600
done
