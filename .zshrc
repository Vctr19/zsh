# export oh-my-zsh path
export ZSH="$HOME/.config/oh-my-zsh"


# set prompt theme 
ZSH_THEME="agnoster"

# plugins list
plugins=(
    git
    docker
    docker-compose
)

# source to omzsh
source $ZSH/oh-my-zsh.sh

# fzf load
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# zplugin load {
source "$HOME/.config/zsh/.zplugin/bin/zplugin.zsh"
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin
# }

# plugins {
zplugin light zdharma/fast-syntax-highlighting
zplugin light zsh-users/zsh-autosuggestions
zplugin light zsh-users/zsh-completions
# }

# user config {
export EDITOR="nvim"
alias tmux="tmux -f $HOME/.config/tmux/tmux.conf"
# }
