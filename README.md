# How to Use

## First, clone the repo to your home
``git clone git@github.com:nigel-stewart/Dotfiles.git ~/dotfiles``

## Neovim
### Create config directory
``mkdir ~/.config/nvim``

### Link the config
``cd ~/.config/nvim && ln -s ~/dotfiles/.vimrc init.vim``

### Install minpac for package management
```
git clone https://github.com/k-takata/minpac.git \
    ~/.config/nvim/pack/minpac/opt/minpac
```

### Install/update packages
From within nvim run the minpac update command from init.vim:
``: Pu``

## Ohmyzsh
### Link the config
``ln -s ~/dotfiles/.zshrc ~/.zshrc``
