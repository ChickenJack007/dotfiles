local terminal    = "kitty"
local fileManager = "thunar"
local menu        = "rofi -show drun"
local browser     = "zen-browser"

---------------------
---- KEYBINDINGS ----
---------------------

local mainMod = "SUPER" -- Sets "Windows" key as main modifier

-- Example binds, see https://wiki.hypr.land/Configuring/Basics/Binds/ for more
hl.bind(mainMod .. " + RETURN", hl.dsp.exec_cmd(terminal))
local closeWindowBind = hl.bind(mainMod .. " + C", hl.dsp.window.close())
local forceCloseWindowBind = hl.bind(mainMod .. " + SHIFT + X", hl.dsp.window.kill())
-- closeWindowBind:set_enabled(false)
hl.bind(mainMod .. " + DELETE", hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'"))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod .. " + V", hl.dsp.window.float({ action = "toggle" }))
--hl.bind(mainMod .. " + SPACE", hl.dsp.exec_cmd(menu))
hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())
hl.bind(mainMod .. "+ SHIFT + I", hl.dsp.layout("togglesplit"))    -- dwindle only
hl.bind(mainMod .. "+ ALT + L", hl.dsp.exec_cmd("wlogout"))
hl.bind(mainMod .. "+ R", hl.dsp.exec_cmd("/home/chess/.config/waybar/scrips/launch.sh"))
hl.bind("ALT + N", hl.dsp.exec_cmd("swaync-client -t"))
hl.bind("ALT + Z", hl.dsp.exec_cmd(browser))
hl.bind("ALT + T", hl.dsp.exec_cmd("thunderbird"))
hl.bind("ALT + V", hl.dsp.exec_cmd("vesktop"))
hl.bind("ALT + S", hl.dsp.exec_cmd("steam"))
hl.bind("ALT + L", hl.dsp.exec_cmd("hyprlock"))
hl.bind("ALT + H", hl.dsp.exec_cmd("hyprpicker -a"))
hl.bind("ALT + SPACE", hl.dsp.exec_cmd(menu))
hl.bind("CTRL + ALT + E", hl.dsp.exec_cmd("rofi -show emoji"))

--Screenshots
hl.bind("PRINT", hl.dsp.exec_cmd("hyprshot -m window --raw | satty --filename -"))
hl.bind("SHIFT + PRINT", hl.dsp.exec_cmd("hyprshot -m region --raw | satty --filename -"))
hl.bind("ALT + SHIFT + P", hl.dsp.exec_cmd("hyprshot -m window --raw | satty --filename -"))
hl.bind("ALT + P", hl.dsp.exec_cmd("hyprshot -m region --raw | satty --filename -"))

-- Move focus with mainMod + vim keys
hl.bind(mainMod .. " + H",  hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + L", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + K",    hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + J",  hl.dsp.focus({ direction = "down" }))

-- Resize window with Alt + Shift + vim keys
hl.bind("ALT + SHIFT + H", hl.dsp.window.resize({ x = -20, y = 0 }))
hl.bind("ALT + SHIFT + J", hl.dsp.window.resize({ x = 0, y = 20 }))
hl.bind("ALT + SHIFT + K", hl.dsp.window.resize({ x = 0, y = -20 }))
hl.bind("ALT + SHIFT + L", hl.dsp.window.resize({ x = 20, y = 0 }))

-- Move window with Shift + vim keys
hl.bind(mainMod .. " + SHIFT + H", hl.dsp.window.move({ direction = "left"}))
hl.bind(mainMod .. " + SHIFT + J", hl.dsp.window.move({ direction = "down"}))
hl.bind(mainMod .. " + SHIFT + K", hl.dsp.window.move({ direction = "up"}))
hl.bind(mainMod .. " + SHIFT + L", hl.dsp.window.move({ direction = "right"}))


local toggleFullscreen = hl.bind(mainMod .. " + SHIFT + F", hl.dsp.window.fullscreen("fullscreen", toggle))

-- Switch workspaces with mainMod + [0-9]
-- Move active window to a workspace with mainMod + SHIFT + [0-9]
for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(mainMod .. " + " .. key,             hl.dsp.focus({ workspace = i}))
    hl.bind(mainMod .. " + SHIFT + " .. key,     hl.dsp.window.move({ workspace = i }))
end

-- Example special workspace (scratchpad)
hl.bind(mainMod .. " + S",         hl.dsp.workspace.toggle_special("magic"))
hl.bind(mainMod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "special:magic" }))

-- Scroll through existing workspaces with mainMod + scroll
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up",   hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Laptop multimedia keys for volume and LCD brightness
--hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
--hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),      { locked = true, repeating = true })
--hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),     { locked = true, repeating = true })
--hl.bind("XF86AudioMicMute",     hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),   { locked = true, repeating = true })
--hl.bind("XF86MonBrightnessUp",  hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"),                  { locked = true, repeating = true })
--hl.bind("XF86MonBrightnessDown",hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"),                  { locked = true, repeating = true })

hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("~/.config/hypr/scripts/volume.sh --inc"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("~/.config/hypr/scripts/volume.sh --dec"),      { locked = true, repeating = true })
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("~/.config/hypr/scripts/volume.sh --toggle"),     { locked = true, repeating = true })
hl.bind("XF86AudioMicMute",     hl.dsp.exec_cmd("~/.config/hypr/scripts/volume.sh --toggle-mic"),   { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp",  hl.dsp.exec_cmd("~/.config/hypr/scripts/brightness.sh --inc"),                  { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown",hl.dsp.exec_cmd("~/.config/hypr/scripts/brightness.sh --dec"),                  { locked = true, repeating = true })

-- Requires playerctl
hl.bind("XF86AudioNext",  hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd("playerctl previous"),   { locked = true })
