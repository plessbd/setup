#!/bin/sh

# Ask for the administrator password upfront
sudo -v

echo "\tSetting Finder Defaults"

echo "\t\tExpand save panel by default"
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

echo "\t\tExpand print panel by default"
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true

echo "\t\tSave to disk (not to iCloud) by default"
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

echo "\t\tSet sidebar icon size to medium"
defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 2

echo "\t\tDon't ask stupid questions"
defaults write com.apple.Finder WarnOnEmptyTrash -bool false
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

echo "\t\tShow status bar"
defaults write com.apple.finder ShowStatusBar -bool true

echo "\t\tShow path bar"
defaults write com.apple.finder ShowPathbar -bool true

echo "\t\tAllow text selection in Quick Look"
defaults write com.apple.finder QLEnableTextSelection -bool true

echo "\t\tSearch the current folder by default"
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

echo "\t\tShow icons for hard drives, servers, and removable media on the desktop"
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

echo "\t\tDefault to list view"
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

echo "\t\tSet ~/ as the default location for new Finder windows"
# More about path here https://github.com/mathiasbynens/dotfiles/pull/285#issuecomment-31608378
defaults write com.apple.finder NewWindowTarget -string "PfHm"
#defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}/"

echo "\t\tExpand the following File Info panes:"
echo "\t\t\tGeneral, Open with, and Sharing & Permissions "
defaults write com.apple.finder FXInfoPanesExpanded -dict \
  General -bool true \
  OpenWith -bool true \
  Privileges -bool true
