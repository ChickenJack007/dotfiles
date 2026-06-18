#!/bin/sh

CHOSEN=$(printf "Single\nDual\nTripple" | rofi -dmenu -i -p "Display")

case "$CHOSEN" in
  "Single") cp ~/.config/hypr/scripts/display/single-display.lua ~/.config/hypr/conf/display.lua ;;
  "Dual") cp ~/.config/hypr/scripts/display/dual-display.lua ~/.config/hypr/conf/display.lua ; xrandr --output HDMI-A-3 --primary;;
  "Tripple") cp ~/.config/hypr/scripts/display/tripple-display.lua ~/.config/hypr/conf/display.lua ; xrandr --output DP-2 --primary;;
  *) exit 1 ;;
esac
