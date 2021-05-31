function fish_right_prompt -d "Write out the right prompt"
    set_color $fish_color_autosuggestion
    echo (date '+%H:%M %d/%m/%Y')
    set_color normal
end
