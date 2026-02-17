#!/usr/bin/env bash

~/.config/hypr/scripts/cliphist-rofi.sh \
    | rofi -dmenu \
    	-i \
        -show-icons \
        -display-columns 2 \
        -theme-str 'element-icon { size: 5em; }' \
    | cliphist decode \
    | wl-copy

hyprctl dispatch sendshortcut CTRL, V, activewindow