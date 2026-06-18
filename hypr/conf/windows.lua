--------------------------------
---- WINDOWS AND WORKSPACES ----
--------------------------------

-- See https://wiki.hypr.land/Configuring/Basics/Window-Rules/
-- and https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/

-- Example window rules that are useful

local suppressMaximizeRule = hl.window_rule({
    -- Ignore maximize requests from all apps. You'll probably like this.
    name  = "suppress-maximize-events",
    match = { class = ".*" },

    suppress_event = "maximize",
})
-- suppressMaximizeRule:set_enabled(false)

hl.window_rule({
    -- Fix some dragging issues with XWayland
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})

-- Layer rules also return a handle.
-- local overlayLayerRule = hl.layer_rule({
--     name  = "no-anim-overlay",
--     match = { namespace = "^my-overlay$" },
--     no_anim = true,
-- })
-- overlayLayerRule:set_enabled(false)

-- Hyprland-run windowrule
hl.window_rule({
    name  = "move-hyprland-run",
    match = { class = "hyprland-run" },

    move  = "20 monitor_h-120",
    float = true,
})

hl.window_rule({
  name = "float-file",
  match = { 
    class = ".*",
    title = "Open File|Open Files|satty|Save|Save As|Export|Import|Open|Choose File|Rename|File Upload",
  },
  float = true,
  center = true
})

hl.layer_rule({
  name = "rofi-dim",
  match = { namespace = "rofi" },
  dim_around = true,
  animation = "popin 85%"
})

hl.layer_rule({
  name = "blur",
  match = { namespace = "rofi|waybar|swaync-control-center|swaync-notification-window|logout_dialog", },
  blur = true,
  ignore_alpha = 0.2,

})

hl.layer_rule({
  name = "swaync-animation",
  match = { namespace = "swaync-control-center", "swaync-notification-window" },
  animation = "slide: right"
})

hl.layer_rule({
  name = "logout",
  match = { namespace = "logout_dialog" },
  animation = "popin: 85%",
  dim_around = true
})

