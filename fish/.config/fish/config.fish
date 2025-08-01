set fish_greeting
set -U EDITOR vim
set -U SHELL fish

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
