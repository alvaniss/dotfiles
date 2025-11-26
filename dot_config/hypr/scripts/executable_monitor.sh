#!/bin/bash

STATE_FILE="$HOME/.config/hypr/scripts/monitor_state"
CONFIG_FILE="$HOME/.config/hypr/hyprland.conf"
MONITOR="HDMI-A-1"

[[ -f "$STATE_FILE" ]] || echo "on" > "$STATE_FILE"

STATE=$(cat "$STATE_FILE")

if [[ "$STATE" == "on" ]]; then
    hyprctl keyword monitor "$MONITOR, disable"
    sed -i "s/^monitor *= *$MONITOR,.*/monitor = $MONITOR, disable/" "$CONFIG_FILE"
    echo "off" > "$STATE_FILE"

else
    hyprctl keyword monitor "$MONITOR, 1920x1080@74.97, 0x-580, auto, transform, 3"
    sed -i "s/^monitor *= *$MONITOR,.*/monitor = $MONITOR, 1920x1080@74.97, 0x-580, auto, transform, 3/" "$CONFIG_FILE"
    sleep 0.5 && awww img $HOME/.config/hypr/images/desktop-background.png -o $MONITOR -t none
    echo "on" > "$STATE_FILE"
fi
