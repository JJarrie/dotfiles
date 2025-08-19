set fish_greeting
set -U EDITOR vim
set -U SHELL fish

set -gx PATH $HOME/.local/bin $PATH

starship init fish | source

zoxide init fish | source

alias vim='nvim'
alias v='nvim'
alias pacman='sudo pacman'
alias reload='exec fish'
alias ls='eza -a --icons'
alias ll='eza -al --icons'
alias lt='eza -a --tree --level=1 --icons'

fzf --fish | source
function cdfzf
    set -l dir (find $argv[1] -type d 2> /dev/null | fzf)
    if test -n "$dir"
        cd "$dir"
    end
end

alias fb="fzf --preview 'bat --style=numbers --color=always {}'"
alias fbn="fzf --preview 'bat --style=numbers --color=always {}' | xargs -n 1 nvim"

# ASDF
if test -z $ASDF_DATA_DIR
    set _asdf_shims "$HOME/.asdf/shims"
else
    set _asdf_shims "$ASDF_DATA_DIR/shims"
end

if not contains $_asdf_shims $PATH
    set -gx --prepend PATH $_asdf_shims
end

set --erase _asdf_shims
