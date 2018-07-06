# Path to your oh-my-zsh installation.
 export ZSH=/home/alexis/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="my-wezm"

# Uncomment the following line to use hyphen-insensitive completion. Case
HYPHEN_INSENSITIVE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
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
xrdb -merge /home/alexis/.Xresources
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
alias scrot='scrot ~/screenshots/%Y-%m-%d-%T-screenshot.png'
