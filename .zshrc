# export ZSH path {
export ZSH="/home/victor/.oh-my-zsh"
# }

# 
ZSH_THEME="agnoster"

# Plugins list {
plugins=(
    git
    docker
    docker-compose
)
# }

source $ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

### Added by Zplugin's installer
source "$HOME/.zplugin/bin/zplugin.zsh"
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin
### End of Zplugin installer's chunk
zplugin light zdharma/fast-syntax-highlighting
zplugin light zsh-users/zsh-autosuggestions
zplugin light zsh-users/zsh-completions

# User config {
export EDITOR='nvim'
if [ -z "$TMUX" ]; then tmux -f ~/.config/tmux/tmux.conf; fi
# }
