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

echo "Setup finished:
[1/4] - Installed packages: tmux vi feh xterm
[2/4] - Setup Vim configuration and Vim color scheme
[3/3] - Setup tmux with .tmux.conf
[4/4] - Setup XTerm configuration

Now set the default terminal emulator via:
# sudo update-alternatives --config x-terminal-emulator

Now restart the terminal."
