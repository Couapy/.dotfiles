#!/bin/bash

for layout in ~/.config/i3/layouts/*; do
    i3-msg "workspace $(basename "$layout" .json); append_layout $layout"
done

i3-msg "workspace 1"
