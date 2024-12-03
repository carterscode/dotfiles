# Set Alias'

# git

alias gitpush='git add . && git commit -m "Updates $(date +%s)" && git push'

# Kubernetes
alias kpodinfo="kubectl get pods --all-namespaces -o jsonpath='{..image}' | tr -s '[[:space:]]' '\n' | sort | uniq -c"
alias kpod="kubectl get pods"

alias brewup="brew update && brew upgrade && brew cleanup"
alias brewls="brew list"
alias brewlsf="brew list --formula"
alias brewlsc="brew list --cask"


# Add some aliases
alias du="dust"
alias time="hyperfine"
alias gitrst="git fetch origin && git reset --hard origin/HEAD"

alias c='clear'
alias h='history'
alias gh='history|grep'
alias mkdir='mkdir -p'
alias mv='mv -vi'
alias cp='cp -vi'
alias tree='tree -C'
alias df='df -H'
alias pbc='pbcopy'
alias vim='nvim'
alias gpgl='gpg --list-keys'

alias p='python'
alias p2='$HOME/.pyenv/shims/python2'
alias p3='python3'

alias reboot='sudo /sbin/reboot'
alias rfinder='killall Finder'
alias rdock='killall Dock'

alias gdu='gdu-go'
alias ptop='bpytop'
alias disk='gdu'
alias grep='rg'
alias top='htop'
alias wget='wget2'

alias dnslookup="dig +noall +answer"

alias ga='git add'
alias gs='git status'
alias gc='git commit'

alias ls='eza --group-directories-first --icons'
alias ll='eza --group-directories-first --icons -lah'

alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .2='cd ../../'
alias .3='cd ../../../'
alias .4='cd ../../../../'

alias sc='source $HOME/.zshrc'
alias zshrc='zed ~/.zshrc'
alias sship='zed ~/.config/starship.toml'
alias aliases='zed ~/.zsh/aliases.zsh'

# Share current dir
alias pshare='python -m http.server 2121'
alias rshare='ruby -run -e httpd . -p 2121'

# Stealth (very slow) nmap
alias snmap='nmap -f -T2 --data-length 8 --randomize-hosts -ttl 58'

# local ip
#alias ip='ifconfig | grep "inet "'

# public ip
#alias myip='curl ipinfo.io; echo'

# combined
alias ip='echo "Local ips:" && ifconfig | grep "inet " | awk '\''{printf "\t%s\n", $2}'\'' && echo "External ip:" && curl -s ipinfo.io/ip | awk '\''{printf "\t%s\n", $0}'\'';'