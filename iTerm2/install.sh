#!/bin/bash
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

echo "Cloning powerline/fonts repo into $DIR/fonts"
git clone git@github.com:powerline/fonts.git $DIR/fonts
cd $DIR/fonts
./install.sh
echo "Fonts installed."
