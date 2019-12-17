#!/bin/bash

# Easier navigation: .., ..., ...., ....., ~ and -
alias cd='func() {cd $1; clear; ls}; func'
alias b='cd .."
alias bb='cd ../..
alias bbb='cd ../../..'
alias ~='cd ~'
alias -- -='cd -'
alias lah='ls -lah'
alias lh='ls -lh'


# copy file interactive
alias cp='cp -rf'

# move file interactive
alias mv='mv -i'

# untar
alias untar='tar xvf'

alias c='clear;ls'
alias fix="dpkg -l |grep ^rc|awk '{print $2}' |sudo xargs dpkg -P"

alias free='free -h'
alias df='df -h'

# compare tool
alias comp='meld'

# git alias
alias gits='git status'
alias gitl='git log"'
alias gitd='git diff'
alias gitdc='git diff --cached'
alias gitb='git branch'
alias gitc='git checkout -- .'
alias gitr='git reset --hard HEAD^'

alias f="find . -name"
alias g="grep -nr"

#python http server
alias pservice='python3 -m http.server'
alias putty='ssh root@192.168.110.154'
alias spd='ssh xukai@192.168.110.248'

alias csrbq='sudo find -type f -name "*.[chS]" > cscope.files && cscope -bR -i cscope.files'
alias ctagsdb='ctags -R *'
alias db_init='csrbq && ctagsdb'
alias db_clean='rm -f cscope.* tags'

alias gerrit='firefox 192.168.110.254/gerrit'
alias redmine='firefox 192.168.110.254/redmine'

alias rpush='git push kamino_rokidos/gx8010 HEAD:refs/for/master'
alias sadb='adb kill-server; sudo adb start-server;adb devices'
alias doc='remmina'

# repo alias
alias rs='repo sync'
alias rb='repo abandon'
alias rp='repo upload'

alias pi='ssh pi@192.168.191.120'

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

# python virtual env
venv () {
	virtualenv $@
}

venv3 () {
	python3 -m venv $@
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

# . /usr/local/lib/python2.7/dist-packages/powerline/bindings/bash/powerline.sh

export XTENSA_PATH=$HOME/xtensa
export PATH="$PATH:${XTENSA_PATH}/XtDevTools/install/tools/RG-2017.8-linux/XtensaTools/bin"
export XTENSA_CORE=GXHifi4_170719A_G1708
export XTENSA_SYSTEM=${XTENSA_PATH}/XtDevTools/install/builds/RG-2017.8-linux/${XTENSA_CORE}/config

export PATH="$PATH:$HOME/.local/pycharm-2018.2.4/bin"
export PATH="$PATH:$HOME/intelFPGA_pro/18.1/qprogrammer/bin"

# export PATH="$PATH:$HOME/.local/csky/2.8.07/bin"
export PATH="$PATH:$HOME/.local/csky/3.8.12/bin"
# export PATH="$PATH:$HOME/.local/csky/3.10.15/bin"

export PATH="$PATH:$HOME/.local/csky/csky-elf-tools-i386-minilibc-20170723/bin"
export PATH="$PATH:$HOME/.local/goxceed/gcc-nationalchip-arm-none-eabi-4_9-2015q3-20150921/bin"
export PATH="$PATH:$HOME/.local/goxceed/gcc-nationalchip-4.9.4-2018.11-i686_arm-linux-uclibcgnueabihf/bin"
# export PATH="$HOME/.local/goxceed/gcc-linaro-4.9.4-2017.01-i686_arm-linux-gnueabihf/bin:$PATH"

export PATH="$PATH:$HOME/.local/arm-jlink"
