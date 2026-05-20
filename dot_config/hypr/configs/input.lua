hl.config({
    input = {
        kb_layout = "us,ru",
        kb_options = "grp:alt_shift_toggle",
        repeat_rate = 40,
        repeat_delay  = 600,
        numlock_by_default = true,
        sensitivity  = 0.55,
        accel_profile = "flat",
        touchpad = {
            natural_scroll = true,
            scroll_factor = 0.4
        },
    },
    misc = {
        key_press_enables_dpms = true,
        mouse_move_enables_dpms = true
    }
})

hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace"
})
