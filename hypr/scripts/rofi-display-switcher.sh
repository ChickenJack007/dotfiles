#!/bin/sh

CHOSEN=$(printf "Single\nDual\nTripple" | rofi -dmenu -i -p "Display")

case "$CHOSEN" in
  "Single") cp ~/.config/hypr/scripts/display/single-display.conf ~/.config/hypr/conf/display.conf ;;
  "Dual") cp ~/.config/hypr/scripts/display/dual-display.conf ~/.config/hypr/conf/display.conf ; xrandr --output HDMI-A-3 --primary;;
  "Tripple") cp ~/.config/hypr/scripts/display/tripple-display.conf ~/.config/hypr/conf/display.conf ; xrandr --output DP-2 --primary;;
  *) exit 1 ;;
esac
