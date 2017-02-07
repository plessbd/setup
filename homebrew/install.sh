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

brew analytics off

taps=(
  caskroom/fonts
  caskroom/versions
  homebrew/dupes
  homebrew/services
)

brewgrams=(
	hub
	ngrep
	dockutil
  rsync
	ssh-copy-id
	tree
	wget
)

for tap in "${taps[@]}";
do
	brew tap $tap
done

brew install "${brewgrams[@]}"

export installedCasks="$(brew cask list)"
find "$(dirname $0)"/packages -name "*.sh" | while read package ; do sh "${package}" ; done

exit 0
