export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=/usr/local/opt/python/libexec/bin:$PATH
export PATH=/opt/homebrew/bin:$PATH
export KUBECONFIG=$KUBECONFIG:$HOME/.kube/config

# Default ZSH Options
setopt autocd              # change directory just by typing its name
#setopt correct            # auto correct mistakes
setopt interactivecomments # allow comments in interactive mode
setopt magicequalsubst     # enable filename expansion for arguments of the form ‘anything=expression’
setopt nonomatch           # hide error message if there is no match for the pattern
setopt notify              # report the status of background jobs immediately
setopt numericglobsort     # sort filenames numerically when it makes sense
setopt promptsubst         # enable command substitution in prompt

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# just remind me to update when it's time
zstyle ':omz:update' mode reminder  

# Uncomment the following line to change how often to auto-update (in days).
zstyle ':omz:update' frequency 13

plugins=(git zsh-autosuggestions zsh-syntax-highlighting you-should-use)

source $ZSH/oh-my-zsh.sh

#Load Aliases
[[ -f ~/.zsh/aliases.zsh ]] && source ~/.zsh/aliases.zsh

# ZSH History Options
HISTSIZE=500000
SAVEHIST=500000
HISTFILE=${HISTFILE:-$HOME/.zsh_history}
setopt appendhistory
setopt inc_append_history
setopt hist_expire_dups_first
setopt hist_find_no_dups
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_save_no_dups
# Ignore interactive commands from history
export HISTORY_IGNORE="(ls|bg|fg|pwd|exit|cd ..)"

# Set Locale
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

#Load Starship Prompt
eval "$(starship init zsh)"