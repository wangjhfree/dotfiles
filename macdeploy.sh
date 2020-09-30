#!usr/bin/env bash

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

brew update
brew upgrade
brew cleanup

# install brew
brew install autojump
brew install wget

# install vim
brew install vim
# brew install vim ctags git astyle
wget -qO- https://raw.github.com/ma6174/vim/master/setup.sh | sh -x
ln -s .dotfiles/vimrc .vimrc

# cheat 2.3.1
brew install cheat
rm -rf .cheat
ln -s ${HOME}/.dotfiles/cheat ${HOME}/.cheat
ln /usr/local/bin/cheat-darwin-amd64 /usr/local/bin/cheat

brew install git
brew install python3
brew install mysql@5.7
brew install redis
brew install nginx

# 解压缩工具
brew install unrar
brew install xz
brew install gzip

# git 地址
# git clone https://github.com/wangjhfree/dotfiles.git
mv dotfiles .dotfiles

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
ln -s .dotfiles/zshrc .zshrc



# ln-s
ln -s .dotfiles/aliases .aliases
ln -s .dotfiles/exports .exports
ln -s .dotfiles/gitconfig .gitconfig




# pip package
ln -s ${HOME}/.dotfiles/pip ${HOME}/.pip
pip install ipython
pip install virtualenv

# nodejs
wget -qO- https://raw.github.com/creationix/nvm/v0.4.0/install.sh | sh
nvm install v8.0.0

# 显示隐藏文件
defaults write com.apple.finder AppleShowAllFiles -boolean true ; killall Finder

