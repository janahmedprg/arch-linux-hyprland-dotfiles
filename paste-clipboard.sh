#!/usr/bin/env bash

~/.config/hypr/scripts/cliphist-rofi.sh \
    | rofi -dmenu \
        -show-icons \
        -display-columns 2 \
        -theme-str 'element-icon { size: 5em; }' \
    | ~/.config/hypr/scripts/cliphist-rofi.sh \
    | wl-copy

hyprctl dispatch sendshortcut CTRL, V, activewindow