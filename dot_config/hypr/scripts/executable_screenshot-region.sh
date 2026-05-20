#!/bin/bash

screenshot="$HOME/Screenshots/$(date +'%F-%H_%M_%S.png')"

geometry=$(slurp -b FFFFFF10 -c dedede) || exit 0
grim -l 1 -c -g "$geometry" "$screenshot" || exit 0

wl-copy < "$screenshot"

while true; do
    action=$(notify-send \
    --action="edit=Edit screenshot" \
    --wait \
    -i "$screenshot" \
    "Screenshot saved" "$screenshot")

    case "$action" in
    edit)
        swappy -f "$screenshot" -o "$screenshot"
        wl-copy < "$screenshot"
        ;;
    folder)
        xdg-open "$HOME/Screenshots"
        break
        ;;
    *)
        break
        ;;
    esac
done
