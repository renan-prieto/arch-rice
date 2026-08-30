#!/bin/bash

choice=$(printf "⏻ Desligar\n↻ Reiniciar\n⇥ Finalizar sessão\n✕ Cancelar" | rofi -dmenu -p "Power")

case "$choice" in
    "⏻ Desligar")
        systemctl poweroff
        ;;
    "↻ Reiniciar")
        systemctl reboot
        ;;
    "⇥ Finalizar sessão")
        i3-msg exit
        ;;
    *)
        exit 0
        ;;
esac
