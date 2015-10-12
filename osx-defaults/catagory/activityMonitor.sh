#!/bin/sh

echo "\tActivity Monitor"
echo "\t\tShow the main window when launching"
defaults write com.apple.ActivityMonitor OpenMainWindow -bool true

echo "\t\tVisualize CPU usage in the Dock icon"
defaults write com.apple.ActivityMonitor IconType -int 5

echo "\t\tShow all processes"
defaults write com.apple.ActivityMonitor ShowCategory -int 0

echo "\t\tSort results by CPU usage"
defaults write com.apple.ActivityMonitor SortColumn -string "CPUUsage"
defaults write com.apple.ActivityMonitor SortDirection -int 0
