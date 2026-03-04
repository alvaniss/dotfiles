#!/bin/bash

pkill -f gpu-screen-recorder
notify-send "Instant Replay" "Stopped"
pkill -RTMIN+8 waybar
