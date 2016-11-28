#!/bin/sh
cask=$(basename ${BASH_SOURCE[0]%.*})
echo "${installedCasks}" | grep "${cask}" > /dev/null
if [ $? -eq 1 ]; then
	brew cask install "${cask}"
	#shellcheck disable=SC2154
	cp $setupHome/conf.d/shuttle/shuttle.json ~/.shuttle.json
else
	echo "${cask} is already installed"
fi
exit 0
