hl.config({
	general = {
		gaps_in = 4,
		gaps_out = 6,
		border_size = 2,
		resize_on_border = true,
		extend_border_grab_area = 10,
		allow_tearing = false,
		layout = "dwindle",
	},

	decoration = {
		rounding = 10,
		active_opacity = 1.0,
		inactive_opacity = 1.0,
		fullscreen_opacity = 1.0,

		shadow = {
			enabled = true,
			range = 12,
			render_power = 6,
			offset = "0 0",
		},

		blur = {
			enabled = true,
			size = 3,
			passes = 2,
			contrast = 1.2,
			brightness = 0.8,
			vibrancy = 0.2,
			vibrancy_darkness = 0.2,
			noise = 0,
			ignore_opacity = true,
			new_optimizations = true,
		},
	},

	animations = {
		enabled = true,
	},

	dwindle = {
		preserve_split = true,
		force_split = 2,
	},

	master = {
		new_status = "master",
	},

	cursor = {
		hide_on_key_press = true,
		warp_on_change_workspace = 1,
	},

	binds = {
		hide_special_on_workspace_change = true,
	},

	xwayland = {
		force_zero_scaling = true,
	},

	misc = {
		force_default_wallpaper = 0,
		disable_hyprland_logo = true,
		disable_splash_rendering = true,
		focus_on_activate = true,
		anr_missed_pings = 3,
		on_focus_under_fullscreen = 1,
	},
})

hl.curve("easeOutQuint", { type = "bezier", points = { { 0.23, 1 }, { 0.32, 1 } } })
hl.curve("easeInOutCubic", { type = "bezier", points = { { 0.65, 0.05 }, { 0.36, 1 } } })
hl.curve("linear", { type = "bezier", points = { { 0, 0 }, { 1, 1 } } })
hl.curve("almostLinear", { type = "bezier", points = { { 0.5, 0.5 }, { 0.75, 1 } } })
hl.curve("quick", { type = "bezier", points = { { 0.15, 0 }, { 0.1, 1 } } })
hl.curve("smooth", { type = "bezier", points = { { 0.23, 1 }, { 0.32, 1 } } })
hl.curve("slide", { type = "bezier", points = { { 0.165, 0.84 }, { 0.44, 1 } } })
hl.curve("overshot", { type = "bezier", points = { { 0.13, 0.99 }, { 0.29, 1.1 } } })

hl.animation({ leaf = "global", enabled = true, speed = 10, bezier = "default" })
hl.animation({ leaf = "border", enabled = true, speed = 5.39, bezier = "easeOutQuint" })
hl.animation({ leaf = "windows", enabled = true, speed = 4.79, bezier = "easeOutQuint" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 4.1, bezier = "easeOutQuint", style = "popin 87%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 1.49, bezier = "linear", style = "popin 87%" })
hl.animation({ leaf = "fadeIn", enabled = true, speed = 1.73, bezier = "almostLinear" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 1.46, bezier = "almostLinear" })
hl.animation({ leaf = "fade", enabled = true, speed = 3.03, bezier = "quick" })
hl.animation({ leaf = "layers", enabled = true, speed = 3.81, bezier = "easeOutQuint" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 4, bezier = "easeOutQuint", style = "fade" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 1.5, bezier = "linear", style = "fade" })
hl.animation({ leaf = "fadeLayersIn", enabled = true, speed = 1.79, bezier = "almostLinear" })
hl.animation({ leaf = "fadeLayersOut", enabled = true, speed = 1.39, bezier = "almostLinear" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 3, bezier = "smooth", style = "slidefade 20%" })
hl.animation({ leaf = "workspacesIn", enabled = true, speed = 3, bezier = "smooth", style = "slidefade 20%" })
hl.animation({ leaf = "workspacesOut", enabled = true, speed = 3, bezier = "smooth", style = "slidefade 20%" })
hl.animation({ leaf = "specialWorkspace", enabled = true, speed = 3, bezier = "overshot", style = "slidefade 15%" })
hl.animation({ leaf = "zoomFactor", enabled = true, speed = 7, bezier = "quick" })
