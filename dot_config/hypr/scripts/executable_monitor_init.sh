bash -c '
STATE_FILE="$HOME/.config/hypr/scripts/monitor_state"
MONITOR="HDMI-A-1"

if [[ -f "$STATE_FILE" ]]; then
    if [[ "$(cat "$STATE_FILE")" = "off" ]]; then
        hyprctl keyword monitor "$MONITOR, disable"
    else
        hyprctl keyword monitor "$MONITOR, 1920x1080@74.97, 0x-580, auto, transform, 3"
    fi
fi
'
