
echo "\tKeyboard"

echo "\t\tEnable full keyboard access for all controls (e.g. enable Tab in modal dialogs)"
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

echo "\t\tAutomatically illuminate built-in MacBook keyboard in low light"
defaults write com.apple.BezelServices kDim -bool true
echo "\t\tTurn off keyboard illumination when computer is not used for 2 minutes"
defaults write com.apple.BezelServices kDimTime -int 120
