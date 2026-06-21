local secMod = "ALT"
local mainMod = "SUPER"

local terminal = "kitty"
local fileManager = "dolphin"
local browser = "zen-browser"
local editor = "kitty --title nvim nvim"

-- Audio
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"), { locked = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), { locked = true })

-- Terminal / TUIs
hl.bind(mainMod .. " + T", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + O", hl.dsp.exec_cmd(terminal .. " opencode"))
hl.bind(mainMod .. " + Q", hl.dsp.exec_cmd(terminal .. " --title kittyfloat"))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(terminal .. " --title superfile zsh -ic \"spf; exec zsh\""))
hl.bind(mainMod .. " + M", hl.dsp.exec_cmd(terminal .. " --title rmpc rmpc"))
hl.bind(mainMod .. " + D", hl.dsp.exec_cmd(terminal .. " --title launcher l"))

-- Hyprland
hl.bind(mainMod .. " + C", hl.dsp.window.close())
hl.bind(mainMod .. " + B", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + F", hl.dsp.window.fullscreen(0))
hl.bind(mainMod .. " + V", hl.dsp.layout("togglesplit"))

-- Programs
hl.bind(mainMod .. " + A", hl.dsp.exec_cmd(browser))
-- hl.bind(mainMod .. " + D", hl.dsp.exec_cmd(menu))
hl.bind(mainMod .. " + S", hl.dsp.exec_cmd(editor))

-- Scripts
hl.bind(mainMod .. " + R", hl.dsp.exec_cmd("~/.config/waybar/scripts/launch.sh"))

-- Window Keybinds
-- Snapwindow (swap)
hl.bind(mainMod .. " + " .. secMod .. " + H", hl.dsp.window.swap({ direction = "left" }))
hl.bind(mainMod .. " + " .. secMod .. " + L", hl.dsp.window.swap({ direction = "right" }))
hl.bind(mainMod .. " + " .. secMod .. " + K", hl.dsp.window.swap({ direction = "up" }))
hl.bind(mainMod .. " + " .. secMod .. " + J", hl.dsp.window.swap({ direction = "down" }))

-- Move focus
hl.bind(mainMod .. " + H", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + L", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + K", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + J", hl.dsp.focus({ direction = "down" }))

-- Move window
hl.bind(mainMod .. " + SHIFT + H", hl.dsp.window.move({ direction = "left" }))
hl.bind(mainMod .. " + SHIFT + L", hl.dsp.window.move({ direction = "right" }))
hl.bind(mainMod .. " + SHIFT + K", hl.dsp.window.move({ direction = "up" }))
hl.bind(mainMod .. " + SHIFT + J", hl.dsp.window.move({ direction = "down" }))

-- Scroll workspaces
hl.bind(mainMod .. " + CONTROL + L", hl.dsp.focus({ workspace = "m+1" }))
hl.bind(mainMod .. " + CONTROL + H", hl.dsp.focus({ workspace = "m-1" }))

hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "m+1" }))
hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "m-1" }))


-- Switch workspace
for i = 1, 10 do
    local key = i % 10
    hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = tostring(i) })) 
end

-- Move window to workspace
for i = 1, 10 do
    local key = i % 10
    hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = tostring(i) })) 
end

-- Resize window
hl.bind("CTRL + SHIFT + H", hl.dsp.window.resize({ x = -20, y = 0, relative = true }))
hl.bind("CTRL + SHIFT + L", hl.dsp.window.resize({ x = 20, y = 0, relative = true }))
hl.bind("CTRL + SHIFT + K", hl.dsp.window.resize({ x = 0, y = -20, relative = true }))
hl.bind("CTRL + SHIFT + J", hl.dsp.window.resize({ x = 0, y = 20, relative = true }))

-- Mouse move/resize window
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Screenshots
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.exec_cmd("bash -c 'grim -g \"$(slurp)\" /home/chris/Pictures/screenshots/$(date +\"%Y-%m-%d_%H-%M-%S\").png'"))
hl.bind(mainMod .. " + CTRL + S", hl.dsp.exec_cmd("grim /home/chris/Pictures/screenshots/$(date +\"%Y-%m-%d_%H-%M-%S\").png"))
