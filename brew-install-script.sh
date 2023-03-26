#!/bin/sh

# Homebrew Script for OSX
# To execute: save and `chmod +x ./brew-install-script.sh` then `./brew-install-script.sh`

echo "Installing brew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Installing brew cask..."
brew tap homebrew/cask

# Install ZSH
echo "Installing zsh and components ..."
brew tap homebrew/cask-fonts 
brew install --cask font-hack-nerd-font
brew install --cask font-fira-code
# exa— A modern replacement for ls
brew install exa
# starship.rs - cross-shell prompt
brew install starship
brew install zsh
sudo dscl . -create /Users/$USER UserShell /opt/homebrew/bin/zsh
curl https://raw.githubusercontent.com/carterscode/dotfiles/master/.zshrc --output ~/.zshrc
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
mkdir ~/.config
curl https://raw.githubusercontent.com/carterscode/dotfiles/master/starship.toml --output ~/.config/starship.toml
cd ~/
cd $HOME && curl -L git.io/antigen > antigen.zsh
brew install antigen
sudo chown -R $(whoami) /opt/homebrew/share/zsh
sudo chmod -R 755 /opt/homebrew/share/zsh

# Programming Languages
mkdir -p $HOME/go/{bin,src,pkg}
brew install golang
echo "Installing Python 3 ..."
brew install pyenv
brew install xz
pyenv install 3.10.10
pyenv global 3.10.10
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3 get-pip.py
python --version
pip3 --version
pip --version
pip install pywinrm
pip install rdk
pip install asitop

# Dev Tools
echo "Installing development tools..."
brew install docker
brew install git
brew install --cask visual-studio-code

# Communication Apps
echo "Installing communication apps..."
brew install --cask discord
brew install --cask slack
brew install --cask zoom

# Web Tools
echo "Installing web tools..."
brew install --cask firefox

# File Storage
echo "Installing file storage tools..."

# Writing Apps
echo "Installing writing apps..."
brew install --cask obsidian

# Other
echo "Installing everything else..."
brew install --cask iterm2
brew install kubectl
brew install awscli
brew install aws-cdk
brew install cfn-lint
brew install watch
brew install wget
brew install syncthing
brew services start syncthing
brew install terraform
brew install ansible
brew install ansible-lint
brew install derailed/k9s/k9s
brew install ipcalc
brew install tree
brew install speedtest-cli
brew install tmux
brew install --cask stats
brew install --cask vlc
# rg — ripgrep recursively searches directories for regex patterns
brew install ripgrep
# fd — a simple, fast and user-friendly alternative to find
brew install fd
# hyperfine - A command-line benchmarking tool
brew install hyperfine
# dust - a more intuitive version of du
brew install dust
# bat — A cat(1) clone with wings
brew install bat
# tldr — simplified and community-driven man pages
brew install tldr
# jump - faster fasd
brew install jump
# fzf — A command-line fuzzy finder
brew install fzf
$(brew --prefix)/opt/fzf/install
brew cleanup
