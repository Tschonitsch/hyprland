hl.config({
    decoration = {
        rounding = 20,
        rounding_power = 2,
        active_opacity = 1.0,
        inactive_opacity = 1.0,
        fullscreen_opacity = 1.0,
        dim_modal = true,
        dim_inactive = false,
        dim_strength = 0.5,
        dim_special = 0.2,
        dim_around = 0.4,
        border_part_of_window = true,

        blur = {
            enabled = true,
            size = 3,
            passes = 3,
            ignore_opacity = true,
            new_optimizations = true,
            xray = false,
            noise = 0.01,
            contrast = 1.0,
            brightness = 1.0,
            vibrancy = 0.0,
            vibrancy_darkness = 0.0,
            special = false,
            popups = true,
            popups_ignorealpha = 0.2,
            input_methods = false,
            input_methods_ignorealpha = 0.2,
        },

        shadow = {
            enabled = false,
            range = 10,
            render_power = 3,
            sharp = false,
            color = surface,
            color_inactive = surface_dim,
            offset = "0, 0",
            scale = 1.0,
        },
    },

    general = {
        border_size = 2,
        gaps_in = 4,
        gaps_out = 10,
        float_gaps = 10,
        gaps_workspaces = 0,

        col = {
            active_border = primary,
            inactive_border = surface_variant,
            nogroup_border_active = primary,
            nogroup_border = "rgba(00000000)",
        },

        layout = "dwindle",
        no_focus_fallback = false,
        resize_on_border = false,
        extend_border_grab_area = 15,
        hover_icon_on_border = true,
        allow_tearing = false,
        resize_corner = 0,
        modal_parent_blocking = true,

        snap = {
            enabled = true,
            window_gap = 10,
            monitor_gap = 10,
            border_overlap = false,
            respect_gaps = true,
        },
    },
})

hl.env("GTK_THEME", "Everforest-Dark-Medium")
hl.env("XCURSOR_THEME", "Kitty")
hl.env("HYPRCURSOR_THEME", "Kitty")
hl.env("XCURSOR_SIZE", "30")
hl.env("HYPRCURSOR_SIZE", "30")
