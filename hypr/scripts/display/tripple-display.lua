------------------
---- MONITORS ----
------------------

-- See https://wiki.hypr.land/Configuring/Basics/Monitors/
hl.monitor({
    output   = "",
    mode     = "preferred",
    position = "auto",
    scale    = "auto",
})

hl.monitor({
  output   = "eDP-1",
  mode     = "preferred",
  position = "auto",
  scale    = "auto",
})

hl.on("hyprland.start", function()
  hl.exec_cmd("xrandr --output DP-2 --primary")
  end)
