#!/bin/bash

ROFI_THEME="$HOME/.config/rofi/powermenu.rasi"

OPTIONS="󰐥
󰑐
󰍃"

SELECTED=$(printf '%s\n' "$OPTIONS" | rofi \
    -dmenu \
    -i \
    -p "Energia" \
    -theme "$ROFI_THEME")

case "$SELECTED" in
    "󰐥")
        systemctl poweroff
        ;;

    "󰑐")
        systemctl reboot
        ;;

    "󰍃")
        i3-msg exit
        ;;
esac
