# Hyprland Custom Configuration

This repository contains my personal **Hyprland configuration**. It is designed for a multi-monitor setup.

---

## 🔹 Features

* **Multi-Monitor Setup:** Configured for DP-1 and DP-2 with different resolutions and refresh rates.
* **Workspace Management:** Each monitor has multiple workspaces.
* **Autostart Programs:** Notifications, status bars, RGB control, and more.
* **Decorations:** Rounded corners, blur, shadows, and custom opacity.
* **Animations:** Extensive bezier curves for window animations.
* **Keybindings:** Launch terminals, applications, move/resize windows, screenshots, workspace navigation.
* **Theme & Appearance:** Gaps, borders, and active/inactive colors.

<br>

## 📂 Configuration Structure

```text
.
├── variables.conf        # Color schemes
├── autostart.conf        # Programs to autostart
├── decoration.conf       # Window rounding, blur, and shadows
├── keybindings.conf      # Key and mouse bindings
├── animations.conf       # Animation definitions
```

---

## 🖥 Monitors

| Monitor | Resolution @ Refresh | Position | Transform |
| ------- | -------------------- | -------- | --------- |
| DP-1    | 2560x1440@320        | 0x0      | 1         |
| DP-2    | 2560x1440@165        | 2560x0   | 1         |

---

## 💻 Workspaces

* **DP-1 (Main):** 1, 2, 3, 4, 5
* **DP-2 (Left):** 6, 7, 8, 9, 10

---

## 🔑 Modkeys

* `$mainMod = Super` (Windows key)
* `$secMod = ALT`

---

## 🖱 Key & Mouse Bindings

* Launch terminal: `$mainMod + Q`
* Launch file manager: `$mainMod + E`
* Launch rofi: `$mainMod + D`
* Move windows: `$mainMod + SHIFT + arrow keys`
* Resize windows: `CTRL + SHIFT + arrow keys` or mouse
* Switch workspaces: `$mainMod + 1-0`
* Move window to workspace: `$mainMod + SHIFT + 1-0`
* Volume controls: XF86 keys
* Screenshots: `$mainMod + SHIFT + S`

<br>

## 🌈 Appearance

* **Gaps:** inner = 4, outer = 10
* **Border Size:** 1px
* **Active Border:** `rgba(FFFFFFaa)`
* **Inactive Border:** `rgba(00000000)`
* **Layout:** dwindle
* **Resize on border:** enabled
* **Allow tearing:** false

<br>

## ⚡ Autostart Programs

* hyprpolkitagent
* waybar
* openrgb
* swww-daemon
* swaync
* eww daemon
* solaar

---

## 📖 Resources

* [Hyprland Wiki: Configuring](https://wiki.hypr.land/Configuring/)
* [Hyprland Wiki: Monitors](https://wiki.hypr.land/Configuring/Monitors/)
* [Hyprland Wiki: Window Rules](https://wiki.hypr.land/Configuring/Window-Rules/)
* [Hyprland Wiki: Workspace Rules](https://wiki.hypr.land/Configuring/Workspace-Rules/)
