#notify-send "Changing theme"

#wallpaper
awww img ~/.config/themes/forest-dark/Forest-Dark.png --transition-type center --transition-fps 60 --transition-step 255
#hyprland border
cp ~/.config/themes/forest-dark/look.lua ~/.config/hypr/conf/
#waybar
cp ~/.config/themes/forest-dark/theme.css ~/.config/waybar/
#swaync
cp ~/.config/themes/forest-dark/theme.css ~/.config/swaync/
#rofi
cp ~/.config/themes/forest-dark/config.rasi ~/.config/rofi/
#wlogout
cp ~/.config/themes/forest-dark/theme.css ~/.config/wlogout/

~/.config/waybar/scrips/launch.sh
~/.config/swaync/scrips/launch.sh
hyprctl reload

notify-send "Theme changed"
