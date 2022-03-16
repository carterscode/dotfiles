#!/bin/sh

# Homebrew Script for OSX
# To execute: save and `chmod +x ./brew-install-script.sh` then `./brew-install-script.sh`

echo "Installing brew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Installing brew cask..."
brew tap homebrew/cask

# Programming Languages
brew install golang
mkdir -p $HOME/go/{bin,src,pkg}
brew install pyenv
pyenv install 3.9.10
pyenv global 3.9.10

# Dev Tools
echo "Installing development tools..."
brew install docker
brew install git
brew install --cask visual-studio-code

# Communication Apps
echo "Installing communication apps..."
#brew install --cask discord
brew install --cask slack
brew install --cask zoom

# Web Tools
echo "Installing web tools..."
brew install --cask firefox

# File Storage
echo "Installing file storage tools..."

# Writing Apps
echo "Installing writing apps..."

# Other
echo "Installing everything else..."
brew install --cask iterm2
brew install kubectl
brew install awscli
brew install cfn-lint
brew tap homebrew/cask-fonts
brew install --cask font-fira-code
brew install watch
brew install wget
brew install syncthing
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
brew install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cd $HOME && curl -L git.io/antigen > antigen.zsh
brew install antigen
sudo chown -R username /usr/local/share/zsh/
sudo chmod -R 755 /usr/local/share/zsh/
curl https://raw.githubusercontent.com/carterscode/dotfiles/master/.zshrc --output ~/.zshrc
