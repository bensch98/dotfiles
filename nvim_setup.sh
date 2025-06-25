#!/bin/bash

# clean up previous installs
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
rm -rf /opt/nvim-linux-x86_64
rm -rf /usr/local/bin/nvim
sudo apt update
sudo apt remove neovim

# build from source
sudo apt install ninja-build gettext cmake unzip curl build-essential
git clone https://github.com/neovim/neovim.git
cd neovim
make CMAKE_BUILD_TYPE=Release
sudo make install
# installed in /usr/local/bin/nvim

# configure neovim
mkdir -p .config/nvim

# packer installation
git clone --depth 1 https://github.com/wbthomason/packer.nvim \
  ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# followed setup: https://www.youtube.com/watch?v=w7i4amO_zaE

