#!/usr/bin/env bash

# homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap homebrew/php
brew tap caskroom/fonts

# nodebrew
curl -L git.io/nodebrew | perl - setup
echo export PATH=\$HOME/.nodebrew/current/bin:\$PATH >> ~/.profile
source ~/.profile
nodebrew install latest
nodebrew install stable
nodebrew use latest

# tools via brew
brew install caskroom/cask/brew-cask
brew install git
brew install hub
brew install ansible
brew install php55
brew install mcrypt
brew install php55-mcrypt
echo export "PATH=\$(brew --prefix php55)/bin:\$PATH" >> ~/.profile

# tools via npm
npm install -g bower
#npm install -g coffee-script
npm install -g gulp
npm install -g gulp-straw
npm install -g istanbul
npm install -g node-inspector

# tools via gem
sudo gem install slim

# desktop apps via cask
export HOMEBREW_CASK_OPTS="--appdir=/Applications"
brew cask install 0xed
brew cask install 1password
brew cask install atom
brew cask install brackets
brew cask install chocolat
brew cask install coteditor
brew cask install dropbox
brew cask install espresso
brew cask install fake
brew cask install firefox
brew cask install github
brew cask install google-chrome
brew cask install google-drive
brew cask install ksdiff
brew cask install mailplane
brew cask install marked
brew cask install pandoc
brew cask install querious
brew cask install skype
brew cask install sourcetree
brew cask install vagrant
brew cask install vagrant-manager
brew cask install virtualbox
brew cask install vlc

# fonts via caskroom-fonts
brew cask install font-noto-sans-japanese

# packages via apm
apm install file-icons
apm install language-haskell
apm install monokai
apm install regex-railroad-diagram

# other tools
sudo sh ./lib/sketchtool.sh
sudo sh ./lib/composer.sh

# fix for Vagrant Manager
sudo ln -s /usr/local/bin/ansible-playbook /usr/bin/ansible-playbook

# cleanup
brew cleanup
