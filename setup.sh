#!/bin/bash

sudo apt-get update
sudo apt-get install tmux vi feh xterm

# set vimrc and vim color scheme
sudo cp .vimrc ~
sudo cp skrrt.vim /usr/share/vim/vim81/colors
# setup tmux
cp .tmux.conf ~
# set default terminal emulator
cp .Xresources ~
xrdb ~/.Xresources

# install custom tools
# port scans
sudo apt-get install nmap arp-scan
# file meta data
sudo apt-get install libimage-exiftool-perl poppler-utils

echo "Setup finished:
[1/5] - Installed packages: tmux vi feh xterm
[2/5] - Setup Vim configuration and Vim color scheme
[3/5] - Setup tmux with .tmux.conf
[4/5] - Setup XTerm configuration
[5/5] - Setup custom packages

Now set the default terminal emulator via:
# sudo update-alternatives --config x-terminal-emulator

Now restart the terminal."
