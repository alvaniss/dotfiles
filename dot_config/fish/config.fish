if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting ""
pyenv init - fish | source
export PATH="/usr/bin:/bin:$PATH"

fish_config theme choose matugen
