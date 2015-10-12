#!/bin/sh
brew cask list | grep atom > /dev/null
if [ $? -eq 1 ]; then
  brew cask install --appdir=/Applications atom
	defaults write com.github.atom moveToApplicationsFolderAlertSuppress -bool true
	
	apm stars -i -u plessbd
else
	echo "atom is already installed"
fi
exit 0
