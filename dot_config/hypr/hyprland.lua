require("configs.autostart")
require("configs.binds")
require("configs.envs")
require("configs.input")
require("configs.looknfeel")
require("configs.tiling")
require("configs.windowrules")
require("noctalia").apply_theme()

hl.monitor({
	output = "DP-2",
	mode = "2560x1440@165",
	position = "1080x310",
	scale = 1,
})

hl.monitor({
	output = "HDMI-A-1",
    mode = "1920x1080@74.97",
    position = "0x0",
    scale = 1,
    transform = 3,
	disabled = true,
})
