#notify-send "Changing theme"

#wallpaper
awww img ~/.config/themes/catppuccin-mocha/catppuccin_artix.png --transition-type center --transition-fps 60 --transition-step 255
#hyprland border
cp ~/.config/themes/catppuccin-mocha/look.lua ~/.config/hypr/conf/
#waybar
cp ~/.config/themes/catppuccin-mocha/theme.css ~/.config/waybar/
#swaync
cp ~/.config/themes/catppuccin-mocha/theme.css ~/.config/swaync/
#rofi
cp ~/.config/themes/catppuccin-mocha/config.rasi ~/.config/rofi/
#wlogout
cp ~/.config/themes/catppuccin-mocha/theme.css ~/.config/wlogout/

~/.config/waybar/scrips/launch.sh
~/.config/swaync/scrips/launch.sh
hyprctl reload

notify-send "Theme changed"
