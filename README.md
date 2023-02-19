# Install Homebrew

#Big Sur

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#Monterey/Catalina/

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install Warp

# Install Nerd Fonts
brew tap homebrew/cask-fonts && brew install --cask font-hack-nerd-font

# Install Exa

brew install exa

# Install starship

brew install starship

# Install zsh

brew install zsh

# Install oh-my-zsh on MacOS

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install antigen

cd $HOME && curl -L git.io/antigen > antigen.zsh

brew install antigen

sudo chown -R `whoami` /usr/local/share/zsh/

sudo chmod -R 755 /usr/local/share/zsh/

# Install Golang

brew install golang

mkdir -p $HOME/go/{bin,src,pkg}

# Install Python3 and make default

brew install pyenv

pyenv install 3.9.10

pyenv global 3.9.10

pyenv uninstall 3.9.5

curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py

python3 get-pip.py

python --version

pip3 --version

pip --version

pip install pywinrm

pip install rdk

# Install Misc apps

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
