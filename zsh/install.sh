sudo -v

brew install zsh
$(dirname $0)/prezto.zsh
echo $(which zsh) | sudo tee -a /etc/shells
chsh -s $(which zsh)
