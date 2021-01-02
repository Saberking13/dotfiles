#!/usr/bin/env bash

NETCHECK=$(~/.config/sway/scripts/check_connection.sh)

swayupd()
{   
    notify-send "System notice" "Updating Sway..."
    yay -S sway-git swaybg-git swayidle-git swaylock-git wlroots-git --noconfirm \
        && notify-send "System notice" "Sway is up-to-date." \
        || notify-send "System notice" "Something went wrong when updating Sway, Check ~/.swayupdlog for details."
}

swaynoupd()
{
    notify-send "System notice" "Unable to connect to internet, aborting Sway update..."
}

[[ $NETCHECK = "active" ]] && swayupd > ~/.swayupdlog || swaynoupd
