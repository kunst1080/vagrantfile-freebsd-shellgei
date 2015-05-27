#!/bin/sh
set -euv

### -------------------- Provisioning by user.
cd
USER=`whoami`

sudo chsh -s bash $USER

cat <<EOS >> .bash_profile
export LANG=ja_JP.UTF-8
export EDITOR=vim
export HISTSIZE=2000
export HISTFILESIZE=2000

alias ls='gls --color=auto --show-control-char -F'
alias l=ls
alias la='ls -a'
alias ll='ls -l'
alias lla='ls -la'
alias c=clear
alias cls=clear
alias h=history
alias vi=vim
alias mv='mv -i'
alias ggrep='/usr/local/bin/grep $*'
# coreutils
alias factor=gfactor
alias seq=gseq


exit
