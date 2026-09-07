#!/bin/bash

CURRENT="$HOME/.cache/current-wallpaper"

# Verifica se existe um wallpaper atual
if [ ! -f "$CURRENT" ]; then
    exit 1
fi

WALLPAPER="$(cat "$CURRENT")"

# Verifica se o arquivo existe
if [ ! -f "$WALLPAPER" ]; then
    exit 1
fi

# Atualiza o betterlockscreen usando SOMENTE o wallpaper atual
betterlockscreen -u "$WALLPAPER"
