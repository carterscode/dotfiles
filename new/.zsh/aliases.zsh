# # Set Alias'

alias ls='eza --group-directories-first --icons'
alias ll='eza --group-directories-first --icons -lah'
alias mkdir='mkdir -p'
alias wget='wget2'
alias ip='echo "Local ips:" && ifconfig | grep "inet " | awk '\''{printf "\t%s\n", $2}'\'' && echo "External ip:" && curl -s ipinfo.io/ip | awk '\''{printf "\t%s\n", $0}'\'';'