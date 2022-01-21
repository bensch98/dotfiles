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

Make XTerm default terminal emulator:
```bash
sudo update-alternatives --config x-terminal-emulator
```

Packages:
```bash
# image viewer
sudo apt-get update feh

# auto correction
sudo apt-get install python3-dev python3-pip python3-setuptools
pip3 install thefuck --user
```
