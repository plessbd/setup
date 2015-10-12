#!/bin/sh

export setupHome="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

sudo -v

# Since I store homebrew on a physical hard drive going to set up some links

if [ ! -d /Volumes/750GBHD/Library/Caches/Homebrew ]; then
	mkdir -p /Volumes/750GBHD/Library/Caches/Homebrew
fi
if [ ! -e /Library/Caches/Homebrew ]; then
	sudo ln -s /Volumes/750GBHD/Library/Caches/Homebrew /Library/Caches/Homebrew
fi

if [ ! -d /Volumes/750GBHD/opt/homebrew-cask ]; then
	mkdir -p /Volumes/750GBHD/opt/homebrew-cask
fi
if [ ! -e /opt/homebrew-cask ]; then
	ln -s /Volumes/750GBHD/opt/homebrew-cask /opt/homebrew-cask
fi

$setupHome/osx-defaults/install.sh
