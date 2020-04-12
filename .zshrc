#!/bin/zsh

# Path to your oh-my-zsh installation.
export ZSH=/home/alexis/.oh-my-zsh

ZSH_THEME="my-wezm"
HYPHEN_INSENSITIVE="true"

plugins=(
  git
  shrink-path
)

source $ZSH/oh-my-zsh.sh
source /usr/share/nvm/init-nvm.sh

# User configuration

# export PATH=$PATH:$HOME/.rbenv/shims
export PATH=$PATH:`yarn global bin`
export PATH="$PATH:$HOME/go/bin"
export PATH="$PATH:$HOME/.cargo"
export GOPATH=$HOME/go
export PATH="$PATH:/home/alexis/.dotnet/tools"
export MSBuildSDKsPath=/opt/dotnet/sdk/2.2.105/Sdks
export PATH=$MSBuildSDKsPath:$PATH
export DOTNET_ROOT=/usr/bin
export JAVA8_HOME=/usr/lib/jvm/java-8-openjdk 

# maintainx
export COMPOSE_CONVERT_WINDOWS_PATHS=1

export LESS='-SRXF'
export EDITOR='nano'
export VISUAL='code -w -n'

export TERMINFO=/usr/share/terminfo
export TERM='alacritty'
export TERMCMD='alacritty'

# custom scripts
if [ -z $(echo $PATH | grep -o $HOME/Scripts) ]; then
   export PATH="${PATH}:$HOME/Scripts"
fi

# start x
if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
    pgrep i3 || exec startx
fi

alias gcom='git commit -m "$(curl -s whatthecommit.com/index.txt)"'
alias c='clear'
alias dots='git --git-dir=$HOME/.dots.git/ --work-tree=$HOME'
alias l='exa -alh'
alias yays='yay -Syu --sudoloop --noupgrademenu --nocleanmenu --nodiffmenu --useask --noconfirm'
alias open='xdg-open'

eval "$(rbenv init -)"

