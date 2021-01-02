#!/usr/bin/env bash

sysupd()
{
    sudo xbps-install -Suy
}

notify-send "System notice" "Updating your system..."
sysupd > ~/.sysupdlog && notify-send "System notice" "Your system is up-to-date." || notify-send "System notice" "System update failed, check ~/.sysupdlog for details."
