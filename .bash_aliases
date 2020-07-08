#!/bin/bash

# Easier navigation: .., ..., ...., ....., ~ and -
alias cl='cd_ls() {cd $1; clear; ls}; cd_ls'
alias b='cl ..'
alias bb='cl ../..'
alias bbb='cl ../../..'
alias ~='cl ~'
alias -- -='cl -'
alias lah='ls -lah'
alias lh='ls -lh'

alias cp='cp -rf'
alias mv='mv -i'

alias c='clear;ls'
alias fix="dpkg -l | grep ^rc | awk '{print $2}' | sudo xargs dpkg -P"

alias free='free -h'
alias df='df -h'

alias f='find . -name'
alias g='grep -nr'

# python http server
alias pservice='python3 -m http.server'
alias spd='ssh xukai@192.168.110.248'

# tags and cscope
alias csrbq='sudo find -type f -name "*.[chS]" > cscope.files && cscope -bR -i cscope.files'
alias ctagsdb='ctags -R *'
alias db_init='csrbq && ctagsdb'
alias db_clean='rm -f cscope.* tags'

alias sadb='adb kill-server; sudo adb start-server;adb devices'
alias doc='remmina'

# git alias
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

# repo alias
alias repos='repo sync'
alias repob='repo abandon'
alias repou='repo upload .'

# tmux alias
alias ta='tmux attach'
alias tl='tmux list-sessions'
alias tk='tmux kill-session -t $1'

# make alias
alias mck='make clean;make'
alias makem='make menuconfig'

# fzf alias
alias prev="fzf --preview 'cat {}'"

pc ()      { picocom -b 115200 /dev/ttyUSB$1 }
install () { sudo apt-get install $@ }
venv3 ()   { python3 -m venv $@ }

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

export EDITOR=/usr/bin/vim

# GIT heart FZF
# -------------

is_in_git_repo() {
  git rev-parse HEAD > /dev/null 2>&1
}

fzf-down() {
  # fzf --height 50% "$@" --border
  fzf --height 100% "$@" --border
}

gf() {
  is_in_git_repo || return
  git -c color.status=always status --short |
  fzf-down -m --ansi --nth 2..,.. \
    --preview '(git diff --color=always -- {-1} | sed 1,4d; cat {-1}) | head -500' |
  cut -c4- | sed 's/.* -> //'
}

gb() {
  is_in_git_repo || return
  git branch -a --color=always | grep -v '/HEAD\s' | sort |
  fzf-down --ansi --multi --tac --preview-window right:70% \
    --preview 'git log --oneline --graph --date=short --color=always --pretty="format:%C(auto)%cd %h%d %s" $(sed s/^..// <<< {} | cut -d" " -f1) | head -'$LINES |
  sed 's/^..//' | cut -d' ' -f1 |
  sed 's#^remotes/##'
}

gt() {
  is_in_git_repo || return
  git tag --sort -version:refname |
  fzf-down --multi --preview-window right:70% \
    --preview 'git show --color=always {} | head -'$LINES
}

gh() {
  is_in_git_repo || return
  git log --date=short --format="%C(green)%C(bold)%cd %C(auto)%h%d %s (%an)" --graph --color=always |
  fzf-down --ansi --no-sort --reverse --multi --bind 'ctrl-s:toggle-sort' \
    --header 'Press CTRL-S to toggle sort' \
    --preview 'grep -o "[a-f0-9]\{7,\}" <<< {} | xargs git show --color=always | head -'$LINES |
  grep -o "[a-f0-9]\{7,\}"
}

gr() {
  is_in_git_repo || return
  git remote -v | awk '{print $1 "\t" $2}' | uniq |
  fzf-down --tac \
    --preview 'git log --oneline --graph --date=short --pretty="format:%C(auto)%cd %h%d %s" {1} | head -200' |
  cut -d$'\t' -f1
}

#
# PATH
#
export XTENSA_PATH=$HOME/xtensa
export PATH="$PATH:${XTENSA_PATH}/XtDevTools/install/tools/RG-2017.8-linux/XtensaTools/bin"
export XTENSA_CORE=GXHifi4_170719A_G1708
export XTENSA_SYSTEM=${XTENSA_PATH}/XtDevTools/install/builds/RG-2017.8-linux/${XTENSA_CORE}/config

export PATH="$PATH:$HOME/intelFPGA_pro/18.1/qprogrammer/bin"

export PATH="$PATH:$HOME/.local/csky/3.8.12/bin"
export PATH="$PATH:$HOME/.local/csky/csky-elf/bin"
export PATH="$PATH:$HOME/.local/csky/csky-linux-uclibc-tools/bin"

export PATH="$PATH:$HOME/.local/goxceed/gcc-nationalchip-arm-none-eabi-4_9-2015q3-20150921/bin"
export PATH="$PATH:$HOME/.local/goxceed/gcc-nationalchip-4.9.4-2018.11-i686_arm-linux-uclibcgnueabihf/bin"

export PATH="$PATH:$HOME/.local/arm-jlink"
