# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH:$HOME/.local/bin

# Path to your oh-my-zsh installation.
export ZSH="/home/nigel/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# How often to auto-update (in days).
export UPDATE_ZSH_DAYS=7

# Choose which ohmyzsh plugins to load
plugins=(git ssh-agent npm)

source $ZSH/oh-my-zsh.sh

# User configuration

## Set personal aliases
alias install="sudo apt install"
alias uninstall="sudo apt remove --purge"
alias update="sudo apt update && sudo apt upgrade"
alias notes="joplin"

## load NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
