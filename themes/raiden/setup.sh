#wallpaper
swww img ~/.config/themes/raiden/raiden.png --transition-type center --transition-fps 60 --transition-step 255

#waybar
cp ~/.config/themes/raiden/theme.css ~/.config/waybar/
~/.config/waybar/scrips/launch.sh

#swaync
cp ~/.config/themes/raiden/theme.css ~/.config/swaync/
~/.config/swaync/scrips/launch.sh

#hyprland border
cp ~/.config/themes/raiden/border.conf ~/.config/hypr/conf/
hyprctl reload

#rofi
cp ~/.config/themes/raiden/config.rasi ~/.config/rofi
