#!/bin/sh
brew cask list | grep flux > /dev/null
if [ $? -eq 1 ]; then
  brew cask install --appdir=/Applications flux
	defaults write org.herf.Flux moveToApplicationsFolderAlertSuppress -bool true
	defaults write org.herf.Flux SUAutomaticallyUpdate 1

else
	echo "flux is already installed"
fi
exit 0
