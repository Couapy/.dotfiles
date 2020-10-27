#!/bin/bash

# Specifying the icon(s) in the script
# This allows us to change its appearance conditionally
icon=""

pgrep -x redshift &> /dev/null
if [[ $? -eq 0 ]]; then
    temp=$(redshift -p 2>/dev/null | grep Temp | cut -d':' -f2)
fi

if [[ -n $temp ]]; then
    echo " ${icon} ${temp}"
fi
