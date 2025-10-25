#!/bin/bash

MONITOR_NAME="HDMI-A-1"

# Check if the monitor exists in the list of active monitors
if hyprctl monitors | grep -q "$MONITOR_NAME"; then
    # Monitor exists → currently enabled → disable it
    hyprctl keyword monitor "$MONITOR_NAME, disable"
else
    # Monitor missing → currently disabled → enable it
    # Adjust resolution, position, scale, transform as needed
    hyprctl keyword monitor "$MONITOR_NAME, 1920x1080@74.97, 0x-580, auto, transform, 3"
fi
