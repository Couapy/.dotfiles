# Options
set __fish_git_prompt_show_informative_status
set __fish_git_prompt_showcolorhints
set __fish_git_prompt_showupstream "verbose"
# set __fish_git_prompt_showuntrackedfiles 0
set __fish_git_prompt_describe_style "branch"
set __fish_git_prompt_color
set __fish_git_prompt_color_upstream

# Colors
set blue (set_color green)
set green (set_color green)
set magenta (set_color magenta)
set normal (set_color normal)
set red (set_color red)
set yellow (set_color yellow)

set __fish_git_prompt_color_branch magenta --bold
set __fish_git_prompt_color_dirtystate white
set __fish_git_prompt_color_invalidstate red
set __fish_git_prompt_color_merging yellow
set __fish_git_prompt_color_stagedstate yellow
set __fish_git_prompt_color_upstream_ahead green
set __fish_git_prompt_color_upstream_behind red


# Icons
set __fish_git_prompt_char_stateseparator ' '
set __fish_git_prompt_char_cleanstate '✓'
set __fish_git_prompt_char_conflictedstate '❌'
set __fish_git_prompt_char_dirtystate '*'
set __fish_git_prompt_char_invalidstate '❌'
set __fish_git_prompt_char_stagedstate '+'
set __fish_git_prompt_char_untrackedfiles '?'

set __fish_git_prompt_char_upstream_ahead '↑'
set __fish_git_prompt_char_upstream_behind '↓'
set __fish_git_prompt_char_upstream_diverged '↑↓'
set __fish_git_prompt_char_upstream_equal 'up-to-date'


function fish_prompt --description 'Write out the prompt'
    set last_status $status
    if set -q already_executed
        printf '\n'
    else
        set -g already_executed
    end
    printf '%s%s%s%s' (set_color $fish_color_cwd --bold) (prompt_pwd) (set_color normal) (fish_git_prompt)

    if test $CMD_DURATION -gt 1000
        set duration (echo "$CMD_DURATION 1000" | awk '{printf "%.3fs", $1 / $2}')
        printf ' %stook %s%s' (set_color bryellow) $duration (set_color normal)
    end

    printf '\n'

    if set -q VIRTUAL_ENV
        printf '%s(%s)%s ' (set_color brwhite) (basename $VIRTUAL_ENV) (set_color normal)
    end

    if test $last_status -ne 0
        if type -q fish_status_to_signal
            printf '%s[%s]%s ' (set_color red) (fish_status_to_signal $last_status) (set_color normal)
        else
            printf '%s[%s]%s ' (set_color red) $last_status (set_color normal)
        end
    end
    printf '%s>%s ' (set_color blue --bold) (set_color normal)
end
