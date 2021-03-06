#!/bin/bash
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."

  # Install the correct homebrew for each OS type
  if test "$(uname)" = "Darwin"
  then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  elif test "$(expr substr $(uname -s) 1 5)" = "Linux"
  then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/linuxbrew/go/install)"
  fi

fi

brew update
brew install caskroom/cask/brew-cask
brew install the_silver_searcher
brew cask install iterm2
brew cask install spectacle
brew install tig
brew install bat
brew install python3
brew install awscli
brew tap caskroom/eonts
brew cask install font-fira-code
# Vim with +clipboard support
brew install vim
# Needed by YouCompleteMe - vim plugin
brew install cmake
exit 0
