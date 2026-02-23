#!/usr/bin/env bash

current=$(powerprofilesctl get)

case "$current" in
    performance)
        powerprofilesctl set balanced
        notify-send "Power Profile" "Balanced"
        ;;
    balanced)
        powerprofilesctl set power-saver
        notify-send "Power Profile" "Power Saver"
        ;;
    power-saver)
        powerprofilesctl set performance
        notify-send "Power Profile" "Performance"
        ;;
esac