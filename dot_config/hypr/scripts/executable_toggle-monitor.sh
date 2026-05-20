#!/bin/bash

STATE_FILE="$HOME/.config/hypr/scripts/monitor-state"
CONFIG_FILE="$HOME/.config/hypr/hyprland.lua"
MONITOR="HDMI-A-1"

[[ -f "$STATE_FILE" ]] || echo "on" > "$STATE_FILE"

STATE=$(cat "$STATE_FILE")

if [[ "$STATE" == "on" ]]; then
    sed -i 's/disabled = false/disabled = true/g' "$CONFIG_FILE"
    echo "off" > "$STATE_FILE"

else
    sed -i 's/disabled = true/disabled = false/g' "$CONFIG_FILE"
    sleep 0.5 && awww img $HOME/.config/hypr/images/desktop-background.png -o $MONITOR -t none
    echo "on" > "$STATE_FILE"
fi
