# Configuration - Dev Environment

Files:
- ~/bashrc
- ~/condarc
- ~/oh-my-zsh/themes/robbyrussel.zsh-theme
- ~/.tmux.conf
- ~/.vimrc
- ~/.zshrc
- /usr/share/vim/vim81/colors/skrrt.vim
- ~/.Xresources 

Set defaults:
- Terminal emulator: XTerm
- Editor: /usr/bin/vim.basic
```bash
sudo update-alternatives --config x-terminal-emulator
sudo update-alternatives --config editor
```

Packages:
```bash
# image viewer
sudo apt-get update feh

# auto correction
sudo apt-get install python3-dev python3-pip python3-setuptools
pip3 install thefuck --user
```
