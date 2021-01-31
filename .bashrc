#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
PS2='> '

PATH=$PATH:~/gap/bin:/home/alex/.local/bin
WINEPREFIX=~/.wine

alias grep='grep --color=auto'
alias ls='ls --color=auto'

make() { 
    colormake "$@" 
}

set editing-mode vi
set keymap vi
[ -f "/home/alex/.ghcup/env" ] && source "/home/alex/.ghcup/env" # ghcup-env

MAKEFLAGS="-j4"
