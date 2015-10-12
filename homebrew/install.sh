#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

which -s brew
if [[ $? != 0 ]] ; then
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
  wget
  ssh-copy-id
  tree
  caskroom/cask/brew-cask
  android-platform-tools
  dockutil
	ngrep
	shellcheck
	thefuck
)

for tap in "${taps[@]}";
do
	brew install $tap
done

brew install ${brewgrams[@]}

for file in `find $(dirname $0)/packages/*.sh`;
do
  sh $file
done

exit 0
