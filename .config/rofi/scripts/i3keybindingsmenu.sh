#!/bin/bash

rofi_command="rofi -theme themes/appsmenu.rasi"

keybindings=$(
    egrep "^bindsym" $HOME/.config/i3/config | \
    cut -d" " -f2- \
)

echo -e "${keybindings}" | $rofi_command -dmenu -selected-row 0
