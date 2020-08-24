export PATH=$HOME/bin:/usr/local/bin:$PATH
export KUBECONFIG=$KUBECONFIG:$HOME/.kube/config
#export ZSH="/Users/cfields/.oh-my-zsh"

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

source $HOME/antigen.zsh

# Set Alias'

alias kpodinfo="kubectl get pods --all-namespaces -o jsonpath='{..image}' | tr -s '[[:space:]]' '\n' | sort | uniq -c"
alias kpod="kubectl get pods"

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Zsh completion and highlighting
antigen bundle zsh-users/zsh-syntax-highlighting # load before zsh-history-substring-search
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions

# Bundles
antigen bundle robbyrussell/oh-my-zsh plugins/git
antigen bundle robbyrussell/oh-my-zsh plugins/golang
antigen bundle robbyrussell/oh-my-zsh plugins/pip
antigen bundle robbyrussell/oh-my-zsh plugins/python
antigen bundle robbyrussell/oh-my-zsh plugins/virtualenv
antigen bundle robbyrussell/oh-my-zsh plugins/vscod

antigen bundle robbyrussell/oh-my-zsh plugins/terraform
antigen bundle robbyrussell/oh-my-zsh plugins/vault
antigen bundle robbyrussell/oh-my-zsh plugins/vagrant
antigen bundle robbyrussell/oh-my-zsh plugins/docker
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

if [ "$(uname -s)" = "Darwin" ]; then
   antigen bundle robbyrussell/oh-my-zsh plugins/osx
fi

# Load the theme.
antigen theme fox

# Tell Antigen that you're done.
antigen apply
