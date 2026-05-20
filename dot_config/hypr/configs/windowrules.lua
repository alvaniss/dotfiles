hl.window_rule({
	name = "suppress-fullscreen",
	match = { class = ".*" },
	tile = true,
	fullscreen = true,
	maximize = true,
	fullscreen_state = 0,
	suppress_event = "fullscreen fullscreenoutput maximize",
})

hl.window_rule({
	name = "no-sleep-when-fullscreen",
	match = { class = ".*" },
	idle_inhibit = "fullscreen",
})

hl.window_rule({
	name = "custom-awww-rounding",
	match = { class = "awww-daemon" },
	rounding = 10,
})

hl.window_rule({
	name = "tile-screenshot-editor",
	match = { class = "be.alexandervanhee.gradia" },
	tile = true,
	center = true,
	size = "1600 900",
})

hl.window_rule({
	name = "tile-preview-window",
	match = { class = "org.gnome.NautilusPreviewer" },
	tile = false,
	center = true,
	size = "1600 900",
})

hl.window_rule({
	name = "cs2-always-fullscreen",
	match = { class = "cs2" },
	fullscreen = true,
})

hl.layer_rule({
	name = "no-screenshot-animation",
	match = { namespace = "selection" },
	no_anim = true,
})
