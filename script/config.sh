#!/usr/bin/env bash

# Finder
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Safari
defaults write com.apple.Safari IncludeDevelopMenu -bool true

# Chrome
defaults write com.google.Chrome DisablePrintPreview -bool true

# Preview (doesn't work in Yosemite. Umm...)
#defaults write com.apple.Preview PVImagePrintingAutoRotate 0
#defaults write com.apple.Preview PVImagePrintingScaleMode 0

# Atom
cp -R atom ~/.atom
