#!/bin/bash

ICON_BAR=""

if [[ $(pgrep -x redshift > /dev/null) -eq 0 ]]; then
    temp=$(redshift -p 2>/dev/null | grep temp | cut -d":" -f2 | cut -d" " -f2)
fi

if [[ -n $temp ]]; then
    echo "${ICON_BAR} ${temp}"
fi
