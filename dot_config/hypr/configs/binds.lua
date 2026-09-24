-- app binds
hl.bind("SUPER + E", hl.dsp.exec_cmd("nautilus --new-window"))
hl.bind("SUPER + B", hl.dsp.exec_cmd("helium-browser"))
hl.bind("SUPER + Z", hl.dsp.exec_cmd("zeditor"))
hl.bind("SUPER + RETURN", hl.dsp.exec_cmd("kitty"))
hl.bind("SUPER + SPACE", hl.dsp.exec_cmd("noctalia msg panel-toggle launcher"))

-- utility binds
hl.bind("SUPER + SHIFT + V", hl.dsp.exec_cmd("noctalia msg panel-toggle clipboard"))
hl.bind("Home", hl.dsp.exec_cmd("noctalia msg screenshot-region"))
hl.bind("page_down", hl.dsp.exec_cmd("noctalia msg screenshot-fullscreen all"))
hl.bind("SUPER + SHIFT + L", hl.dsp.exec_cmd("noctalia msg session lock"))
hl.bind("SUPER + P", hl.dsp.window.float({ action = "toggle" }))
hl.bind("SUPER + Q", hl.dsp.exec_cmd("wl-freeze -a"))

-- scripts
hl.bind("SUPER + SHIFT + J", hl.dsp.exec_cmd("~/.config/hypr/scripts/toggle-monitor.sh"))

-- other
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("noctalia msg volume-up 5"))
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("noctalia msg volume-down 5"))
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("noctalia msg volume-mute"))
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("noctalia msg media next"))
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("noctalia msg media toggle"))
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("noctalia msg media toggle"))
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("noctalia msg media previous"))
