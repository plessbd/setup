#!/bin/sh
brew cask list | grep atom > /dev/null
if [ $? -eq 1 ]; then
  brew cask install --appdir=/Applications atom
	defaults write com.github.atom moveToApplicationsFolderAlertSuppress -bool true
	if [ -d ~/.atom/ ]; then
		mkdir ~/.atom/
	fi
	#shellcheck disable=SC2154
	cp $setupHome/conf.d/atom/config.cson ~/.atom/
	apm stars -i -u plessbd
else
	echo "atom is already installed"
fi
exit 0
