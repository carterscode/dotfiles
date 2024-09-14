/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install iterm2
brew install zsh
brew install eza
brew install starship
brew install neofetch
brew install --cask font-hack-nerd-font
defaults write com.apple.Finder AppleShowAllFiles true && killall Finder
brew install wget
brew install wget2
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/MichaelAquilina/zsh-you-should-use.git $ZSH_CUSTOM/plugins/you-should-us

git carterscode.itermcolors
git .zshrc
git .zsh/aliases.zsh
git .config/starship.toml
brew install --cask visual-studio-code