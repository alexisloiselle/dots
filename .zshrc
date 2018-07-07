# Path to your oh-my-zsh installation.
export ZSH=/home/alexis/.oh-my-zsh

ZSH_THEME="my-wezm"
HYPHEN_INSENSITIVE="true"

plugins=(
  git
  shrink-path
)

source $ZSH/oh-my-zsh.sh

# User configuration

export XDG_CURRENT_DESKTOP=KDE
export PATH=$PATH:$HOME/.gem/ruby/2.5.0/bin
export PATH="$PATH:$HOME/go/bin"
export GOPATH=$HOME/go

# custom scripts
if [ -z $(echo $PATH | grep -o $HOME/scripts) ]; then
   export PATH="${PATH}:$HOME/scripts"
fi

# start x
if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi

alias gcom='git commit -m "$(curl -s whatthecommit.com/index.txt)"'
alias cdl='cd ~/code/'
alias c='clear'
alias dots='git --git-dir=$HOME/.dots.git/ --work-tree=$HOME'
