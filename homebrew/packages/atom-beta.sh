#!/bin/sh
cask=$(basename ${BASH_SOURCE[0]%.*})
echo "${installedCasks}" | grep "${cask}" > /dev/null
if [ $? -eq 1 ]; then
	if [ -d ~/.atom/ ]; then
		mkdir ~/.atom/
	fi
	brew cask install "${cask}"
	#shellcheck disable=SC2154
	cp $setupHome/conf.d/atom/config.cson ~/.atom/
	apm stars -i -u plessbd
else
	echo "${cask} is already installed"
fi
exit 0
