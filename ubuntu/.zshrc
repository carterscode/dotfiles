# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# Custom aliases
alias ll='ls -la'
alias gs='git status'
alias gpl='git pull'
alias gph='git push'
alias ..='cd ..'
alias ...='cd ../..'

# Set default editor
export EDITOR='nano'

# Enable command auto-correction
ENABLE_CORRECTION="true"

# Disable the 'Oh My Zsh' update check
DISABLE_UPDATE_PROMPT="true"

# Enable color in `ls` command
export LS_OPTIONS='--color=auto'
eval "$(dircolors -b)"

# Set history options
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

# Auto-completion
autoload -Uz compinit
compinit

# Enable syntax highlighting
source $ZSH_CUSTOM/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Enable auto-suggestions
source $ZSH_CUSTOM/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

export STARSHIP_FONT="FiraCode Nerd Font"
eval "$(starship init zsh)"