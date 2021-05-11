#!/bin/bash

# set bash as vi mode
set -o vi

# use vim as default editor
export EDITOR=/usr/bin/vim

# cd and ls
alias b='cd ..; clear; ls'
alias bb='cd ../..; clear; ls'
alias bbb='cd ../../..; clear; ls'
alias ~='cd ~; clear; ls'
alias lah='ls -lah'
alias lh='ls -lh'

# cp and mv
alias cp='cp -rf'
alias mv='mv -i'

# clean terminal
alias c='clear;ls'

# clean dpkg
alias fix="dpkg -l | grep ^rc | awk '{print $2}' | sudo xargs dpkg -P 2>  /dev/null"

# human free and df
alias free='free -h'
alias df='df -h'

# search
alias f='find . -name'
alias g='ag'

# python
alias pservice='python3 -m http.server'
venv3 ()   { python3 -m venv $@; }

# ssh login
alias spd='ssh xukai@192.168.110.248'

# tags and cscope
alias csrbq='sudo find -type f -name "*.[chS]" > cscope.files && cscope -bR -i cscope.files'
alias ctagsdb='ctags -R *'
alias db_init='csrbq && ctagsdb'
alias db_clean='rm -f cscope.* tags'

# adb
alias sadb='adb kill-server; sudo adb start-server;adb devices'

# git
alias gits='git status'
alias gitl='git log'
alias gitd='git diff'
alias gitdc='git diff --cached'
alias gitb='git branch'
alias gitc='git checkout -- .'
alias gitr='git reset --hard HEAD^'
alias gitco='git checkout'
alias gitcom='git checkout master'
alias gitaa='git add --all'
alias gitau='git add -u'
alias gitcm='git commit'
alias gitcma='git commit --amend'

# repo
alias repos='repo sync .'
alias repob='repo abandon'
alias repou='repo upload .'

# tmux
alias ta='tmux attach'
alias tl='tmux list-sessions'
alias tk='tmux kill-session -t $1'

# serial connect
pc ()      { picocom -b 115200 /dev/ttyUSB$1; }
mc ()      { minicom -D /dev/ttyUSB$1 -b 115200 --color=on; }


# colored man pages
man() {
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


#
# PATH
#
function ADD_PATH() {
    if [[ -d $1 ]] && [[ ! $PATH =~ $1 ]]; then
        export PATH="$PATH:$1"
    fi
}

ADD_PATH $HOME/.local/bin

ADD_PATH $HOME/intelFPGA_pro/18.1/qprogrammer/bin

ADD_PATH $HOME/.local/toolchains/csky/csky-elf/bin
ADD_PATH $HOME/.local/toolchains/csky/csky-elfabiv2/bin
ADD_PATH $HOME/.local/toolchains/csky/csky-linux-uclibc-tools/bin

ADD_PATH $HOME/.local/toolchains/arm/arm-none-eabi/bin
ADD_PATH $HOME/.local/toolchains/arm/arm-linux-gnueabihf/bin
ADD_PATH $HOME/.local/toolchains/arm/arm-linux-uclibcgnueabihf/bin
ADD_PATH $HOME/.local/toolchains/arm-jlink
