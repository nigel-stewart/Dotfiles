# If you come from bash you might have to change your $PATH.
export PATH=$PATH:$HOME/bin:/usr/local/bin:$HOME/.local/bin:$HOME/.npm-global/bin:$HOME/.pyenv/bin

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="af-magic"

# How often to auto-update (in days).
export UPDATE_ZSH_DAYS=7

# Choose which ohmyzsh plugins to load
plugins=(git ssh-agent npm)

# Load oh-my-zsh shell script
source $ZSH/oh-my-zsh.sh

# User configuration
## Set personal aliases
alias install="sudo apt install"
alias uninstall="sudo apt remove --purge"
alias update="sudo apt update && sudo apt upgrade"
alias notes="joplin"
alias ls='lsd'

## Initialize pyenv
eval "$(pyenv init -)"

## Load NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
