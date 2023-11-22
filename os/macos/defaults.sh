#!/bin/bash

# Close System Preferences just in case
osascript -e 'tell application "System Preferences" to quit'

# ------------- #
# General UI/UX #
# ------------- #

# Enable three finger drag
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerDrag -bool true
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerDrag -bool true

# Set dark theme
sudo defaults write /Library/Preferences/.GlobalPreferences AppleInterfaceTheme Dark

# ----------- #
# Screenshots #
# ----------- #

# Save screenshots to the desktop
defaults write com.apple.screencapture location -string "${HOME}/Desktop"

# Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)
defaults write com.apple.screencapture type -string "png"

# Disable shadow in screenshots
defaults write com.apple.screencapture disable-shadow -bool true

# ------ #
# Finder #
# ------ #

# Show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Show path bar
defaults write com.apple.finder ShowPathbar -bool true

# ---- #
# Mail #
# ---- #

# Copy email addresses as `foo@example.com` instead of `Foo Bar <foo@example.com>` in Mail.app
defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool false
