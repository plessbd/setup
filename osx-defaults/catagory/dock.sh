#!/bin/sh

# Ask for the administrator password upfront
sudo -v

echo "\tDock"
# Enable highlight hover effect for the grid view of a stack
defaults write com.apple.dock mouse-over-hilite-stack -bool true

echo "\t\tShow indicator lights for open applications in the Dock"
defaults write com.apple.dock show-process-indicators -bool true

echo "\t\tMake Dock icons of hidden applications translucent"
defaults write com.apple.dock showhidden -bool true
echo "\t\tMoving and hiding dock"
defaults write com.apple.Dock autohide -bool true
defaults write com.apple.dock orientation left

echo "\t\tCleaning up dock icons"

dockutil --remove all --no-restart
dockutil --add "/Applications/Launchpad.app" --no-restart
dockutil --add "/Applications/Firefox.app" --no-restart
dockutil --add "/Applications/Atom Beta.app" --no-restart
dockutil --add "/Applications" --view grid --display folder --sort name --no-restart
dockutil --add "~/Downloads" --view grid --display folder --sort name --no-restart


echo "\t\tbig & autohidden dock"
defaults write com.apple.dock tilesize -int 64
defaults write com.apple.dock autohide -bool true


echo "\t\tFaster animation when switching spaces"
defaults write com.apple.dock expose-animation-duration -float 0.15

echo "\t\tMinimize windows into their application’s icon"
defaults write com.apple.dock minimize-to-application -bool true

echo "\t\tMinimize effect"
defaults write com.apple.dock mineffect -string scale

echo "\t\tEnable spring loading for all Dock items"
defaults write com.apple.dock enable-spring-load-actions-on-all-items -bool true
