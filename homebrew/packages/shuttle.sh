#!/bin/sh
brew cask list | grep shuttle > /dev/null
if [ $? -eq 1 ]; then
  brew cask install --appdir=/Applications shuttle
	cp $setupHome/conf.d/shuttle/shuttle.json ~/.shuttle.json
else
	echo "atom is already installed"
fi
exit 0
