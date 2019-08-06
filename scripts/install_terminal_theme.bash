#!bash

# thanks https://apple.stackexchange.com/questions/344401/how-to-programatically-set-terminal-theme-profile

theme=$(<./terminal_themes/Luke1.theme.xml)

plutil -replace Window\ Settings.Luke1 \
  -xml "$theme" \
  ~/Library/Preferences/com.apple.Terminal.plist

defaults write com.apple.Terminal "Default Window Settings" -string "Luke1"
defaults write com.apple.Terminal "Startup Window Settings" -string "Luke1"
