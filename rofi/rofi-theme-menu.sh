#!/bin/sh

CHOSEN=$(printf "Forest Dark\nRaiden\nCatppuccin Mocha\nRed Eclipse" | rofi -dmenu -i -p "Theme")

case "$CHOSEN" in
	"Forest Dark") ~/.config/themes/forest-dark/setup.sh ;;
	"Raiden") ~/.config/themes/raiden/setup.sh ;;
	"Catppuccin Mocha") ~/.config/themes/catppuccin-mocha/setup.sh ;;
	"Red Eclipse") swww img ~/Pictures/Wallpapers/Red_Eclipse.png --transition-type center --transition-fps 60 --transition-step 255 ;;
	*) exit 1 ;;
esac
