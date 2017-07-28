#!/bin/bash

# Easier navigation: .., ..., ...., ....., ~ and -
alias f="cd ..;ls"
alias ff="cd ../..;ls"
alias fff="cd ../../..;ls"
alias ~="cd ~;ls" 
alias -- -="cd -;ls"
alias lah="ls -lah"

# copy file interactive
alias cp='cp -rf'

# move file interactive
alias mv='mv -i'

# untar
alias untar='tar xvf'

alias vie='vi -u ~/essential.vim'

alias c='clear'
alias fix="dpkg -l |grep ^rc|awk '{print $2}' |sudo xargs dpkg -P"

# extract file 
extract () {
   if [ -f $1 ] ; then
       case $1 in
           *.tar.bz2)   tar xvjf $1    ;;
           *.tar.gz)    tar xvzf $1    ;;
           *.bz2)       bunzip2 $1     ;;
           *.rar)       unrar x $1     ;;
           *.gz)        gunzip $1      ;;
           *.tar)       tar xvf $1     ;;
           *.tbz2)      tar xvjf $1    ;;
           *.tgz)       tar xvzf $1    ;;
           *.zip)       unzip $1       ;;
           *.Z)         uncompress $1  ;;
           *.7z)        7z x $1        ;;
           *)           echo "don't know how to extract '$1'..." ;;
       esac
   else
       echo "'$1' is not a valid file!"
   fi
 }

export EDITOR=/usr/bin/vim

man()
{
    env \
    LESS_TERMCAP_mb=$(printf "\e[1;31m") \
    LESS_TERMCAP_md=$(printf "\e[1;31m") \
    LESS_TERMCAP_me=$(printf "\e[0m") \
    LESS_TERMCAP_se=$(printf "\e[0m") \
    LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
    LESS_TERMCAP_ue=$(printf "\e[0m") \
    LESS_TERMCAP_us=$(printf "\e[1;32m") \
    man "$@"
}


