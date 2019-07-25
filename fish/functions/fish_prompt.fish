# Defined in - @ line 2
function fish_prompt --description 'Write out the prompt'
	set -l color_cwd
    set -l suffix
    set -l datecol "magenta"

    switch "$USER"
        case root toor
            if set -q fish_color_cwd_root
                set color_user brred
            else
                set color_user green
            end
            set suffix '#'
        case '*'
            set color_cwd $fish_color_cwd
            set suffix '$'
    end


    fish_git_branch
    if set -q git_branch
        set git_part $git_branch
        if test $git_dirty_count -gt 0
            set git_part "$git_part$c0:$ce$git_dirty_count"
        end
    end
    set -g fish_prompt_pwd_dir_length 8
    echo -n -s \
        #(set_color $datecol) "["(date +%H:%M:%S)"]"\
        (set_color green --bold) "$USER" @ (prompt_hostname) \
        (set_color $fish_color_normal)':'\
(set_color brblue --bold) (prompt_pwd)\
(set_color brred --bold) " "$git_part""
    if set -q VIRTUAL_ENV
        echo -n -s (set_color -b blue white) "(" (basename "$VIRTUAL_ENV") ")" (set_color normal) " "
    end
    echo -n -s (set_color normal) "$suffix "
end
