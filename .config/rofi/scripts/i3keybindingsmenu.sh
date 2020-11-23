#!/bin/bash

rofi_command="rofi -theme themes/listmenu.rasi"

keybindings=$(
    egrep "^bindsym" $HOME/.config/i3/config | \
    cut -d" " -f2- | \
    awk '$1 = "<b>"$1"</b>"'
)

echo -e "${keybindings}" | $rofi_command \
    -dmenu \
    -markup-rows  \
    -i \
    -p "i3 Keybindings" \
    -selected-row 0
