#!/bin/bash

screenshot="$HOME/Screenshots/$(date +'%F-%H_%M_%S.png')"
grim -l 0 -c -g "$(slurp)" - | swappy -f - -o "$screenshot"

wl-copy < "$screenshot"

notify-send "Screenshot saved" "$screenshot" -i "$screenshot"
