#!/bin/bash

# Easier navigation: .., ..., ...., ....., ~ and -
alias b="cd ..;ls"
alias bb="cd ../..;ls"
alias bbb="cd ../../..;ls"
alias ~="cd ~;ls"
alias -- -="cd -;ls"
alias lah="ls -lah"
alias lh="ls -lh"

# copy file interactive
alias cp='cp -rf'

# move file interactive
alias mv='mv -i'

# untar
alias untar='tar xvf'

alias c='clear'
alias fix="dpkg -l |grep ^rc|awk '{print $2}' |sudo xargs dpkg -P"

# compare tool
alias comp="meld"
# git alias
alias gits="git status"
alias gitl="git log"
alias gitd="git diff"
alias gitdc="git diff --cached"
alias gitb="git branch"
alias gitc="git checkout"

alias f="find . -name"
alias g="grep -nr"

#python http server
alias pservice='python3 -m http.server'
alias putty='ssh root@192.168.110.154'

alias csrbq='sudo find `pwd` -type f  -name "*.[chS]" > cscope.files && cscope -bR -i cscope.files'
alias ctagsdb='ctags -R *'
alias db_init='csrbq && ctagsdb'

alias gerrit='firefox 192.168.110.254/gerrit'
alias redmine='firefox 192.168.110.254/redmine'

pc () {
    picocom -b 115200 /dev/ttyUSB$1
}

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
           *.xz)        tar xvJf $1    ;;
           *)           echo "don't know how to extract '$1'..." ;;
       esac
   else
       echo "'$1' is not a valid file!"
   fi
}

# install
install () {
    sudo apt-get install $@
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


export PATH=$PATH:/opt/gxtools/csky-abiv2-elf/bin

export XTENSA_PATH=$HOME/xtensa
export PATH="$PATH:${XTENSA_PATH}/XtDevTools/install/tools/RG-2017.7-linux/XtensaTools/bin"
export XTENSA_CORE=GXHifi4_161020A_G1707
export XTENSA_SYSTEM=${XTENSA_PATH}/XtDevTools/install/builds/RG-2017.7-linux/${XTENSA_CORE}/config

#. /usr/local/lib/python2.7/dist-packages/powerline/bindings/bash/powerline.sh

