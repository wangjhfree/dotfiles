#!usr/bin/env bash

# git 地址
Git clone https://github.com/wangjunh/dotfiles.git


# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

rm -rf .zshrc
ln -s .dotfiles/zshrc .zshrc

ln -s .dotfiles/aliases .aliases
ln -s .dotfiles/exports .exports



# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install
brew install vim

brew install wget

brew install autojump

brew install python3

# install vim
wget -qO- https://raw.github.com/ma6174/vim/master/setup.sh | sh -x
ln -s .dotfiles/vimrc .vimrc

# install pip
sudo easy_install pip
ln -s /Users/Jhui/.dotfiles/pip /Users/Jhui/.pip


pip install ipython
pip install virtualenv

ln -s /Users/Jhui/.dotfiles/pip /Users/Jhui/.pip

# sublime
cp subl /usr/local/bin/
rm -rf /Users/Jhui/Library/Application\ Support/Sublime\ Text\ 3
ln -s /Users/Jhui/.dotfiles/sublime/Sublime\ Text\ 3 /Users/Jhui/Library/Application\ Support/Sublime\ Text\ 3


# nodejs
wget -qO- https://raw.github.com/creationix/nvm/v0.4.0/install.sh | sh
nvm install v6.11.0


# 显示隐藏文件
defaults write com.apple.finder AppleShowAllFiles -boolean true ; killall Finder
