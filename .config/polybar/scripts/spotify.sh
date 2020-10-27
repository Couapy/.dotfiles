#!/bin/bash

if [ "$(playerctl --list-all | grep spotify)" != "" ]; then
    if [ "$(playerctl --player=spotify status)" = "Stopped" ]; then
        echo "No music is playing"
        polybar-msg hook spotify-play-pause 2 1>/dev/null 2>&1
        polybar-msg hook spotify-prev 2 1>/dev/null 2>&1
        polybar-msg hook spotify-next 2 1>/dev/null 2>&1
    else
        playerctl --player=playerctld metadata --format "{{ title }} - {{ artist }}"
        polybar-msg hook spotify-prev 1 1>/dev/null 2>&1
        polybar-msg hook spotify-next 1 1>/dev/null 2>&1
    fi

    if [ "$(playerctl --player=spotify status)" = "Playing" ]; then
        polybar-msg hook spotify-play-pause 1 1>/dev/null 2>&1
    else
        polybar-msg hook spotify-play-pause 2 1>/dev/null 2>&1
    fi
else
    echo ""
    polybar-msg hook spotify-prev 2 1>/dev/null 2>&1
    polybar-msg hook spotify-play-pause 3 1>/dev/null 2>&1
    polybar-msg hook spotify-next 2 1>/dev/null 2>&1
fi

