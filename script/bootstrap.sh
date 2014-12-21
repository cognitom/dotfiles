#!/usr/bin/env bash

sudo -v # ask for password only at the beginning

# homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# nodebrew
curl -L git.io/nodebrew | perl - setup
echo export PATH=$HOME/.nodebrew/current/bin:$PATH >> ~/.profile
nodebrew install latest
nodebrew install stable
nodebrew use latest

# tools via brew
brew install caskroom/cask/brew-cask
brew install git
brew install hub
brew install ansible

# tools via npm
npm install -g bower
npm install -g coffee-script
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
brew cask install mailplane
brew cask install marked
brew cask install pandoc
brew cask install skype
brew cask install sourcetree
brew cask install vagrant
brew cask install vagrant-manager
brew cask install virtualbox
brew cask install vlc

# packages via apm
apm install file-icons
apm install language-haskell
apm install monokai
apm install regex-railroad-diagram

# set prefernces
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.google.Chrome DisablePrintPreview -bool true
# next 2 lines doesn't work in Yosemite. Umm...
#defaults write com.apple.Preview PVImagePrintingAutoRotate 0
#defaults write com.apple.Preview PVImagePrintingScaleMode 0

# other tools
sh ./script/sketchtool.sh
sh ./script/composer.sh

# cleanup
brew cleanup
