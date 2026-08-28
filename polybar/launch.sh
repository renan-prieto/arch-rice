#!/bin/bash

# Encerra instâncias antigas
killall -q polybar

# Espera elas terminarem
while pgrep -u "$UID" -x polybar >/dev/null; do
    sleep 1
done

# Inicia as duas barras
polybar top &
polybar bottom &

echo "Polybar launched..."