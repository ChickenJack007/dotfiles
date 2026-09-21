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
hl.monitor({
  output   = "DP-5",
  mode     = "preferred",
  position = "auto",
  scale    = "auto",
  --transform = 1,
})

hl.on("hyprland.start", function()
  hl.exec_cmd("xrandr --output DP-4 --primary")
  end)
