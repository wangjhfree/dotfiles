#!usr/bin/env bash

HOME_PATH='/Users/Jhui/'


# git 地址
Git clone https://github.com/wangjunh/dotfiles.git

mv dotfiles .dotfiles


# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

ln -s .dotfiles/zshrc .zshrc
ln -s .dotfiles/aliases .aliases
ln -s .dotfiles/exports .exports
ln -s .dotfiles/gitconfig .gitconfig


# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update

brew upgrade

brew cleanup

# install brew
brew install vim

brew install wget

brew install autojump

brew install python3

brew install unrar

brew install http://git.io/sshpass.rb


# install vim
wget -qO- https://raw.github.com/ma6174/vim/master/setup.sh | sh -x

ln -s .dotfiles/vimrc .vimrc


# install pip
sudo easy_install pip

ln -s ${HOME_PATH}/.dotfiles/pip ${HOME_PATH}/.pip

pip install ipython
pip install virtualenv
pip install cheat

ln -s ${HOME_PATH}/.dotfiles/cheat ${HOME_PATH}/.cheat

# nodejs
wget -qO- https://raw.github.com/creationix/nvm/v0.4.0/install.sh | sh
nvm install v6.11.0


# 显示隐藏文件
defaults write com.apple.finder AppleShowAllFiles -boolean true ; killall Finder


