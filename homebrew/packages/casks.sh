#!/bin/bash

CASKS=(
  bettertouchtool
  betterzipql
  cakebrew
  dash
  firefoxdeveloperedition
  google-chrome-dev
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
  spotify
  the-unarchiver
  virtualbox
  vlc
)

brew cask install --appdir=/Applications "${CASKS[@]}"

exit 0
