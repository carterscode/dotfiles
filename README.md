# Install Homebrew

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install iTerm2

# Install zsh

brew install zsh

# Install oh-my-zsh on MacOS

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install antigen

cd $HOME && curl -L git.io/antigen > antigen.zsh

brew install antigen

sudo chown -R username /usr/local/share/zsh/

sudo chmod -R 755 /usr/local/share/zsh/

# Install Python3

brew install python
