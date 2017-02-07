#!/bin/bash

CASKS=(
  betterzipql
  cakebrew
  dash
  font-source-code-pro
  franz
  hyper
  iterm2
  itsycal
  lastpass
  launchrocket
  qlcolorcode
  qlmarkdown
  qlstephen
  qlvideo
  quicklook-csv
  quicklook-json
  sequel-pro-nightly
  the-unarchiver
  virtualbox-extension-pack
  vlc
  yakyak
)

for cask in "${CASKS[@]}";
do
  echo "${installedCasks}" | grep "${cask}" > /dev/null
  if [ $? -eq 1 ]; then
  	brew cask install ${cask}
  	#shellcheck disable=SC2154
  else
  	echo "${cask} is already installed"
  fi
done

exit 0
