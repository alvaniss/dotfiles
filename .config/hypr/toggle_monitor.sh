#!/bin/bash

MONITOR_NAME="HDMI-A-1"

if hyprctl monitors | grep -q "$MONITOR_NAME"; then
    hyprctl keyword monitor "$MONITOR_NAME, disable"
else
    hyprctl keyword monitor "$MONITOR_NAME, 1920x1080@74.97, 0x-580, auto, transform, 3"
fi
