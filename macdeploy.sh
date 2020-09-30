#!usr/bin/env bash

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

brew update
brew upgrade
brew cleanup

# install brew
brew install wget
brew install autojump

# clone dotfiles
brew install git
git clone https://github.com/wangjhfree/dotfiles.git
mv dotfiles .dotfiles

# install vim
wget -qO- https://raw.github.com/ma6174/vim/master/setup.sh | sh -x # brew install vim ctags git astyle
ln -s ${HOME}/.dotfiles/vimrc .vimrc

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
ln -s ${HOME}/.dotfiles/zshrc .zshrc

# cheat 4.1.0 => cheat 自动生成conf.yml => cheatsheets
brew install cheat
ln -s ${HOME}/.dotfiles/cheat ${HOME}/.config

# 开发工具
brew install mysql@5.7
brew install redis
brew install nginx

# pip package
brew install python3
ln -s ${HOME}/.dotfiles/pip ${HOME}/.pip
pip install ipython
pip install virtualenv

# 解压缩工具
brew install unrar
brew install xz
brew install gzip

# ln-s
ln -s .dotfiles/aliases .aliases
ln -s .dotfiles/exports .exports
ln -s .dotfiles/gitconfig .gitconfig

# nodejs
wget -qO- https://raw.github.com/creationix/nvm/v0.4.0/install.sh | sh
nvm install v8.0.0

# 显示隐藏文件
defaults write com.apple.finder AppleShowAllFiles -boolean true ; killall Finder

