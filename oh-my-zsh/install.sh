#!/bin/bash

if [ ! -a "$HOME/z.sh" ]; then
  echo "Installing https://github.com/rupa/z"
  curl https://raw.githubusercontent.com/rupa/z/master/z.sh > $HOME/z.sh
  echo "Z installed successfully."
fi

# Install Oh-My-ZSH if it is not already installed
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
source=$DIR/zshrc
target=$HOME/.zshrc
zshCustomDir=$HOME/.oh-my-zsh/custom/

if [ ! -L "$target" ]; then
  echo "Creating a symbolic link from $source to $target"
  ln -sf $source $target
fi

mkdir -p $zshCustomDir/plugins/
git clone https://github.com/zsh-users/zsh-autosuggestions $zshCustomDir/plugins/zsh-autosuggestions


# Copy all themes to /themes
mkdir -p $zshCustomDir/themes/
cp $DIR/themes/* $zshCustomDir/themes/

echo "Oh-My-Zsh setup successful."
