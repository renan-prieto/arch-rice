#!/bin/bash

LOCKFILE="/tmp/polybar-launch.lock"

(
    flock -n 9 || exit 1

    killall -q polybar

    while pgrep -x polybar >/dev/null; do
        sleep 0.1
    done

    sleep 0.2

    polybar top &
    polybar bottom &

) 9>"$LOCKFILE"
