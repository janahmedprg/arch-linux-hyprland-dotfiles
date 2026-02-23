#!/usr/bin/env bash
current=$(powerprofilesctl get)

case "$current" in
    performance)
        icon=""   # nf-fa-tachometer_fast (Speedometer)
        label="Performance"
        ;;
    balanced)
        icon=""   # nf-fa-circle (Simple circle for balanced)
        label="Balanced"
        ;;
    "power-saver")
        icon=""   # nf-fa-leaf (Leaf / Eco-mode)
        label="Power Saver"
        ;;
esac

# Output JSON for Waybar
echo "{\"text\":\"$icon\", \"alt\":\"$label\"}"