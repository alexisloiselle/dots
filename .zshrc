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

# export PATH=$PATH:$HOME/.rbenv/shims
export PATH=$PATH:`yarn global bin`
export PATH="$PATH:$HOME/go/bin"
export PATH="$PATH:$HOME/.cargo"
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
alias c='clear'
alias dots='git --git-dir=$HOME/.dots.git/ --work-tree=$HOME'
alias l='exa -alh'

eval "$(rbenv init -)"
