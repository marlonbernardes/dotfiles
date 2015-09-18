#!/bin/bash
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
source=$DIR/ackrc
target=$HOME/.ackrc

if [ ! -L "$target" ]; then
  echo "Creating a symbolic link from $source to $target"
  ln -s $source $target
fi

if [ ! $(which ack) ]; then
  echo "Ack is not installed. Installing..."
  brew install ack
  echo "Ack installed successfully."
fi

echo "Ack setup successful."
