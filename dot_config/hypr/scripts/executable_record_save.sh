#!/bin/bash

if pgrep -f "gpu-screen-recorder" >/dev/null; then
    pkill -SIGUSR1 -f gpu-screen-recorder
    notify-send "Instant Replay" "Saved"
else
    gpu-screen-recorder \
        -w DP-2 \
        -s 2560x1440 \
        -f 60 \
        -a default_output \
        -q 30000 \
        -bm cbr \
        -r 120 \
        -o /home/alvaniss/Videos \
        -c mp4 &
    notify-send "Instant Replay" "Started"
    pkill -RTMIN+8 waybar
fi