export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=/usr/local/opt/python/libexec/bin:$PATH
export PATH=/opt/homebrew/bin:$PATH
export KUBECONFIG=$KUBECONFIG:$HOME/.kube/config
export ZSH="~/.oh-my-zsh"

# Go
export GOPATH=$HOME/go
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"

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

# Add some aliases
alias du="dust"
#alias find="fd"
alias ls='exa'
alias ll='exa -alh'
#alias sed='sd'
alias time="hyperfine"
alias gitrst="git fetch origin && git reset --hard origin/HEAD"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}

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
#antigen bundle robbyrussell/oh-my-zsh plugins/docker
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

if [ "$(uname -s)" = "Darwin" ]; then
   antigen bundle robbyrussell/oh-my-zsh plugins/macos
fi

# Load the theme.
#antigen theme fox

source <(fzf --zsh)

# Tell Antigen that you're done.
antigen apply
#pip install --upgrade pip
# use jump
eval "$(jump shell)"
# use Starship prompt
eval "$(starship init zsh)"
