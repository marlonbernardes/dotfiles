#!/bin/bash
# RSpec dotfile

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
source=$DIR/rspec
target=$HOME/.rspec

if [ ! -L "$target" ]; then
  echo "Creating a symbolic link from $source to $target"
  ln -s $source $target
fi

echo "RSpec setup successful."
