#!/bin/bash

# Install Oh-My-ZSH if it is not already installed
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
source=$DIR/zshrc
target=$HOME/.zshrc

if [ ! -L "$target" ]; then
  echo "Creating a symbolic link from $source to $target"
  ln -s $source $target
fi

echo "Oh-My-Zsh setup successful."
