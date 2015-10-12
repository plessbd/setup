#!/bin/sh
sudo -v

brew install zsh
"$(dirname $0)/prezto.zsh"
echo "$(which zsh)" | sudo tee -a /etc/shells
if [ $SHELL != "/usr/local/bin/zsh" ]; then
	chsh -s "$(which zsh)"
fi

sed "s/\# eval prompt_garrett_current_time='\\$.green.%\*/eval prompt_garrett_current_time='\\$\{green\}%\*/p" $setupHome/conf.d/zsh/zsh-prompt-garrett/prompt_garrett_setup > ~/.zprezto/modules/prompt/functions/prompt_garrett_setup

cp $setupHome/conf.d/zsh/zpreztorc ~/.zpreztorc
