hl.window_rule({
    name = "suppress-maximize-events",
    match = { class = ".*" },
    suppress_event = "maximize",
})

hl.window_rule({
    name = "fix-xwayland-drags",
    match = {
        class = "^$",
        title = "^$",
        xwayland = true,
        float = true,
        fullscreen = false,
        pin = false,
    },
    no_focus = true,
})

hl.window_rule({
    name = "move-hyprland-run",
    match = { class = "hyprland-run" },
    move = "20 monitor_h-120",
    float = true,
})

local size_720 = "1280 720"
local size_1080 = "1920 1080"
local size_1440 = "2560 1440"

hl.window_rule({
    name = "steam-settings",
    match = { title = "Steam Settings" },
    float = true,
    size = "850 722",
    center = true,
})

hl.window_rule({
    name = "thunar",
    match = { class = "thunar" },
    float = true,
    size = size_720,
    center = true,
})

hl.window_rule({
    name = "lrcget",
    match = { class = "LRCGET" },
    float = true,
    size = size_720,
    center = true,
})

hl.window_rule({
    name = "rmpc",
    match = { title = "rmpc" },
    float = true,
    size = "1280 825",
    center = true,
})

hl.window_rule({
    name = "rmpcfloat",
    match = { title = "rmpcfloat" },
    float = true,
    size = "1320 352",
    move = "610 48",
})

hl.window_rule({
    name = "clock",
    match = { title = "clock" },
    float = true,
    size = "600 220",
    center = true,
})

hl.window_rule({
    name = "kittyfloat",
    match = { title = "kittyfloat" },
    float = true,
    size = "1280 825",
    center = true,
})

hl.window_rule({
    name = "superfile",
    match = { title = "superfile" },
    float = true,
    size = "1280 825",
    center = true,
})

hl.window_rule({
    name = "vim",
    match = { title = "vim" },
    float = true,
    size = "1280 825",
    center = true,
})

hl.window_rule({
    name = "nvim",
    match = { title = "nvim" },
    float = true,
    size = "1280 825",
    center = true,
})

hl.window_rule({
    name = "openrgb",
    match = { title = "OpenRGB" },
    float = true,
    size = size_720,
    center = true,
})

hl.window_rule({
    name = "launcher",
    match = { title = "launcher" },
    float = true,
    size = "600 390",
    center = true,
})

hl.window_rule({
    name = "calander",
    match = { title = "calander" },
    float = true,
    size = "1280 825",
    center = true,
})

hl.window_rule({
    name = "wiremix",
    match = { title = "wiremix" },
    float = true,
    size = "940 360",
    move = "820 48",
})

hl.window_rule({
    name = "impala",
    match = { title = "impala" },
    float = true,
    size = "774 1381",
    move = "1776 48",
})

hl.window_rule({
    name = "bluetui",
    match = { title = "bluetui" },
    float = true,
    size = "774 1381",
    move = "1776 48",
})
