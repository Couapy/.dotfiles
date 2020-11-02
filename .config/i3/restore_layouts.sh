#!/bin/bash

for layout in ~/.config/i3/layouts/*; do
    i3-msg "workspace $(basename "$layout" .json); append_layout $layout"
done

discord &
/usr/bin/flatpak run --branch=stable --arch=x86_64 --command=spotify --file-forwarding com.spotify.Client &

i3-msg "workspace 1"
