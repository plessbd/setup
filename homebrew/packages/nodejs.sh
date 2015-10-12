#!/bin/sh

brew list | grep node > /dev/null
if [ $? -eq 1 ]; then
  brew install node
  PACKAGES=(
    npm@latest
    json
  )
  npm install -g ${PACKAGES[@]}
else
	echo "node is already installed"
fi

exit 0
