#!/bin/sh

# Ask for the administrator password upfront
sudo -v

find "$(dirname $0)"/catagory/ -name "*.sh" | while read pref ; do sh "${pref}" ; done

# Restart finder to have items take effect
killall Finder
