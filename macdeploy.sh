#!usr/bin/env bash

HOME_PATH='/Users/wangjh/'


# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
brew upgrade
brew cleanup

# install brew
brew install vim
brew install wget
brew install autojump
brew install unrar

brew install git
brew install python3
brew install mysql@5.6
brew install redis
brew install nginx


# git 地址
# git clone https://github.com/wangjhfree/dotfiles.git

mv dotfiles .dotfiles


# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
ln -s .dotfiles/zshrc .zshrc


# install vim
wget -qO- https://raw.github.com/ma6174/vim/master/setup.sh | sh -x
ln -s .dotfiles/vimrc .vimrc

ln -s .dotfiles/aliases .aliases
ln -s .dotfiles/exports .exports
ln -s .dotfiles/gitconfig .gitconfig
ln -s .dotfiles/pip ${HOME_PATH}/.pip

# pip package
pip install ipython
pip install virtualenv
pip install cheat
ln -s .dotfiles/cheat ${HOME_PATH}/.cheat
cp cheat.bash /usr/local/etc/bash_completion.d/


# nodejs
wget -qO- https://raw.github.com/creationix/nvm/v0.4.0/install.sh | sh
nvm install v8.0.0


# 显示隐藏文件
defaults write com.apple.finder AppleShowAllFiles -boolean true ; killall Finder


