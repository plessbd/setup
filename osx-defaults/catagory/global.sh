#!/bin/sh

# Ask for the administrator password upfront
sudo -v

echo "\tGlobal"

echo "\t\tSet dark theme"
sudo defaults write /Library/Preferences/.GlobalPreferences AppleInterfaceTheme Dark

echo "\t\tReveal IP address, hostname, OS version, etc. when clicking the clock"
echo "\t\tin the login window"
sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName

echo "\t\thide menubar"
defaults write NSGlobalDomain _HIHideMenuBar -bool true

echo "\t\tDisable opening and closing window animations"
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false

echo "\t\tIncrease window resize speed for Cocoa applications"
defaults write NSGlobalDomain NSWindowResizeTime -float 0.001

echo "\t\tSet Help Viewer windows to non-floating mode"
defaults write com.apple.helpviewer DevMode -bool true

echo "\t\tRemove duplicates in the “Open With” menu (also see lscleanup alias)"
/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user

echo "\t\tAvoid creating .DS_Store files on network volumes"
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

echo "\t\tDo not prompt for timemachine on new disks"
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

echo "\t\tDisable drop shadow on screenshots"
defaults write com.apple.screencapture disable-shadow -bool true

echo "\t\tSave screenshots to the desktop"
defaults write com.apple.screencapture location -string "${HOME}/Desktop"

echo "\t\tSave screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)"
defaults write com.apple.screencapture type -string "png"

echo "\t\tDisable shadow in screenshots"
defaults write com.apple.screencapture disable-shadow -bool true

echo "\t\tNever require password after sleep or screen saver begins"
defaults write com.apple.screensaver askForPassword -int 0

echo "\t\tStartup sound chime effect (disable: %00)"
sudo nvram SystemAudioVolume=%00﻿

echo "\t\tPlay sound feedback when adjusting volume"
defaults write -g com.apple.sound.beep.feedback -boolean false

echo "\t\tEnable AirDrop over Ethernet and on unsupported Macs:"
defaults write com.apple.NetworkBrowser BrowseAllInterfaces -bool true

echo "\t\tDisable the “Are you sure you want to open this application?” dialog"
defaults write com.apple.LaunchServices LSQuarantine -bool false

echo "\t\tPrevent Time Machine from prompting to use new hard drives as backup volume"
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

echo "\t\tDisable local Time Machine backups"
hash tmutil &> /dev/null && sudo tmutil disablelocal
