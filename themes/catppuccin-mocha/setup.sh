#notify-send "Changing theme"

#wallpaper
swww img ~/.config/themes/catppuccin-mocha/koishi.jpg --transition-type center --transition-fps 60 --transition-step 255

#waybar
cp ~/.config/themes/catppuccin-mocha/theme.css ~/.config/waybar/
~/.config/waybar/scrips/launch.sh

#hyprland border
cp ~/.config/themes/catppuccin-mocha/border.conf ~/.config/hypr/conf/
hyprctl reload

#rofi
cp ~/.config/themes/catppuccin-mocha/config.rasi ~/.config/rofi/

#wlogout
cp ~/.config/themes/catppuccin-mocha/theme.css ~/.config/wlogout/

#swaync
cp ~/.config/themes/catppuccin-mocha/theme.css ~/.config/swaync/
~/.config/swaync/scrips/launch.sh

notify-send "Theme changed"
