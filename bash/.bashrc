#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ls=eza
alias cat='bat -pp'
alias gs='git status'
alias tree='erd --suppress-size --layout inverted --no-ignore --sort name'

export PICO_SDK_PATH="$HOME/pico/pico-sdk"
export LIBVIRT_DEFAULT_URI=qemu:///system

PS1='[\u@\h \W]\$ '
