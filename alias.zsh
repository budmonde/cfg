#!/bin/zsh

# Edit cfg
alias src=". ~/.zshrc"
alias ez="vi ~/.oh-my-zsh/lib/alias.zsh"
alias ev="vi ~/.vim/vimrc"
alias et="vi ~/.tmux.conf"

# ls aliases
alias lsz="ls -la --block-size=M"
alias ks="ls"
alias sl="ls"

# misc
alias cl="clear"
alias g="git"
alias v="vim -p"
alias frm="sudo rm -rf"

# custom functions

# Automatically creates any necessary directories before moving file
# Usage: move src dst
move() {
  mkdir -p $(dirname $2); mv $1 $2;
}

# Searches given string 
# Usage: search text
search() {
  find . ${2:+-name "$2"} -type f -print0 | xargs -0 grep "$1";
}

alias ath='mosh --server="athrun mosh_project mosh-server" --ssh="ssh -X -K -t" mint-square.dialup.mit.edu tmux a'

alias ta='tmux attach -t'
alias tls='tmux ls'
alias tkill='tmux kill-session-t'
