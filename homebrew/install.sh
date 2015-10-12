#!/bin/bash
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

which -s brew
if [ $? != 0 ] ; then
  # Install Homebrew
  # http://brew.sh/
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
	echo "Updating hombrew"
  #brew update
fi

taps=(
  caskroom/versions
  homebrew/services
)

brewgrams=(
	hub
	ngrep
	shellcheck
	thefuck
  android-platform-tools
  caskroom/cask/brew-cask
  dockutil
  ssh-copy-id
  tree
  wget
)

for tap in "${taps[@]}";
do
	brew install $tap
done

brew install "${brewgrams[@]}"

find "$(dirname $0)"/packages/ -name "*.sh" | while read package ; do sh "${package}" ; done

exit 0
