# configs
Configuration files for bash, vim, tmux and others. Described setup is meant for MacOS. 

## Setup

1. Install Apple's command line tools (required by Git and Homebrew)
```
xcode-select --install
```

2. Clone this repository and change to its directory.

3. Install software using the Brewfile
```
brew bundle --file Brewfile
```

4. Create symlinks in home directory using [GNU Stow](https://www.gnu.org/software/stow/)
```
stow . -t ~/
```
To preview what `stow` would do run `stow . -t ~/ -vv -n`. To update the dotfiles in this repository
using local ones run `stow . -t ~/ --adopt`.
