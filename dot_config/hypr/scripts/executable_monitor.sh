#!/bin/bash

STATE_FILE="$HOME/.config/hypr/scripts/monitor_state"
MONITOR_NAME="HDMI-A-1"

[[ -f "$STATE_FILE" ]] || echo "on" > "$STATE_FILE"

CURRENT_STATE=$(cat "$STATE_FILE")

if [ "$CURRENT_STATE" = "on" ]; then
    hyprctl keyword monitor "$MONITOR_NAME, disable"
    echo "off" > "$STATE_FILE"
else
    hyprctl keyword monitor "$MONITOR_NAME, 1920x1080@74.97, 0x-580, auto, transform, 3"
    echo "on" > "$STATE_FILE"
fi
