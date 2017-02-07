#!/bin/sh
git submodule init
git submodule update
export setupHome="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

sudo -v

# Since I store homebrew on a physical hard drive going to set up some links

# find the installers and run them iteratively
find . -name install.sh | while read installer ; do sh "${installer}" ; done
