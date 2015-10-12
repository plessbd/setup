#!/bin/sh

# Ask for the administrator password upfront
sudo -v

for file in `find $(dirname $0)/catagory/*.sh`;
do
	sh $file
done

# Restart finder to have items take effect
killall Finder
