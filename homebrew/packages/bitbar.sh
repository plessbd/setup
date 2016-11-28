#!/bin/sh
cask=$(basename ${BASH_SOURCE[0]%.*})
echo "${installedCasks}" | grep "${cask}" > /dev/null
if [ $? -eq 1 ]; then
	if [ -d ~/.bitbar/ ]; then
		mkdir ~/.bitbar/
	fi
	defaults write com.matryer.BitBar pluginsDirectory ${HOME}/.bitbar
	brew cask install "${cask}"
	#shellcheck disable=SC2154
	#need to download bitbar plugins
	#https://raw.githubusercontent.com/matryer/bitbar-plugins/master/Network/vpn_advanced.sh
	#https://raw.githubusercontent.com/matryer/bitbar-plugins/master/Dev/Homebrew/brew-services.10m.rb
else
	echo "${cask} is already installed"
fi
exit 0
