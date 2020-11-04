#!/usr/bin/env sh

killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 0.01; done
polybar -c ~/.config/polybar/config.ini main &
