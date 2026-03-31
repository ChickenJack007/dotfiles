#notify-send "Changing theme"

#wallpaper
awww img ~/.config/themes/forest-dark/Forest-Dark.png --transition-type center --transition-fps 60 --transition-step 255

#waybar
cp ~/.config/themes/forest-dark/theme.css ~/.config/waybar/
~/.config/waybar/scrips/launch.sh

#swaync
cp ~/.config/themes/forest-dark/theme.css ~/.config/swaync/
~/.config/swaync/scrips/launch.sh

#hyprland border
cp ~/.config/themes/forest-dark/border.conf ~/.config/hypr/conf/
hyprctl reload

#rofi
cp ~/.config/themes/forest-dark/config.rasi ~/.config/rofi/

#wlogout
cp ~/.config/themes/forest-dark/theme.css ~/.config/wlogout/

notify-send "Theme changed"
