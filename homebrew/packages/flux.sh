#!/bin/sh
cask=$(basename ${BASH_SOURCE[0]%.*})
echo "${installedCasks}" | grep "${cask}" > /dev/null
if [ $? -eq 1 ]; then
	brew cask install "${cask}"
	defaults write org.herf.Flux SUAutomaticallyUpdate 1
else
	echo "${cask} is already installed"
fi
exit 0
