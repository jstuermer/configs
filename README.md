# configs
Configuration files for bash, vim, tmux and others. Described setup is meant for MacOS. 

## Setup

Download config files to the following directories:
```
~/.config/alacritty/alacritty.toml`
~/.bashrc
~/.bash_profile
~/.tmux.conf
```

Install Alacritty
```
brew install --cask alacritty
```

Install and use newest version of bash since it is deprecated on MacOS
```
brew install bash
chsh -s /opt/homebrew/bin/bash
```

Install fzf
```
brew install fzf
$(brew --prefix)/opt/fzf/install
```
Make sure that `~/.fzf.bash` exists.

Install tmux
```
brew install tmux
```

Install neovim and lazyvim
