#!/usr/bin/env bash

LOW_BATTERY=19
CRITICAL_BATTERY=9

while [ $(cat /sys/class/power_supply/BAT0/capacity) -gt $LOW_BATTERY ]; do
    sleep 5
done

notify-send --urgency=Critical "System notice" "Battery is below $((LOW_BATTERY+1))%"

while [ $(cat /sys/class/power_supply/BAT0/capacity) -gt $CRITICAL_BATTERY ]; do
    sleep 5
done

notify-send --urgency=Critical "System notice" "Battery is below $((CRITICAL_BATTERY+1))%"

while [ $(cat /sys/class/power_supply/BAT0/capacity) -le $LOW_BATTERY ]; do
    sleep 5
done

bash ~/.config/sway/scripts/battery_notify.sh &
