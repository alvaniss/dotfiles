-- app binds
hl.bind("SUPER + E", hl.dsp.exec_cmd("nautilus --new-window"))
hl.bind("SUPER + B", hl.dsp.exec_cmd("helium-browser"))
hl.bind("SUPER + Z", hl.dsp.exec_cmd("zeditor"))
hl.bind("SUPER + RETURN", hl.dsp.exec_cmd("kitty"))
hl.bind("SUPER + SPACE", hl.dsp.exec_cmd("vicinae toggle"))

-- utility binds
hl.bind("SUPER + CONTROL + SPACE", hl.dsp.exec_cmd("~/.config/hypr/scripts/wallpaper-select.sh"))
hl.bind("SUPER + SHIFT + V", hl.dsp.exec_cmd("xdg-open vicinae://launch/clipboard/history"))
hl.bind("Home", hl.dsp.exec_cmd("~/.config/hypr/scripts/screenshot-region.sh"))
hl.bind("page_down", hl.dsp.exec_cmd("~/.config/hypr/scripts/screenshot-fullscreen.sh"))
hl.bind("ALT + Home", hl.dsp.exec_cmd("pkill hyprpicker || hyprpicker -a"))
hl.bind("SUPER + P", hl.dsp.window.float({ action = "toggle" }))
hl.bind("SUPER + SHIFT + L", hl.dsp.exec_cmd("pidof hyprlock || hyprlock & hyprctl switchxkblayout all 0 > /dev/null 2>&1"))
hl.bind("SUPER + Q", hl.dsp.exec_cmd("wl-freeze -a"))

-- scripts
hl.bind("SUPER + SHIFT + SPACE", hl.dsp.exec_cmd("~/.config/hypr/scripts/toggle-waybar.sh"))
hl.bind("SUPER + SHIFT + J", hl.dsp.exec_cmd("~/.config/hypr/scripts/toggle-monitor.sh"))
hl.bind("SUPER + CONTROL + Z", hl.dsp.exec_cmd("~/.config/hypr/scripts/recording-save.sh"))
hl.bind("SUPER + CONTROL + X", hl.dsp.exec_cmd("~/.config/hypr/scripts/recording-stop.sh"))

-- other
local osdclient = [[swayosd-client --monitor "$(hyprctl monitors -j | jq -r '.[] | select(.focused == true).name')"]]
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd(osdclient .. " --output-volume raise"))
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd(osdclient .. " --output-volume lower"))
hl.bind("XF86AudioMute", hl.dsp.exec_cmd(osdclient .. " --output-volume mute-toggle"))
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd(osdclient .. " --input-volume mute-toggle"))
hl.bind("ALT + XF86AudioRaiseVolume", hl.dsp.exec_cmd(osdclient .. " --output-volume +1"))
hl.bind("ALT + XF86AudioLowerVolume", hl.dsp.exec_cmd(osdclient .. " --output-volume -1"))
hl.bind("XF86AudioNext", hl.dsp.exec_cmd(osdclient .. " --playerctl next"))
hl.bind("XF86AudioPause", hl.dsp.exec_cmd(osdclient .. " --playerctl play-pause"))
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd(osdclient .. " --playerctl play-pause"))
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd(osdclient .. " --playerctl previous"))
