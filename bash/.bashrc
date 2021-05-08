#!/bin/sh
#
# ~/.bashrc
#

[[ $- != *i* ]] && return

[ -r "$HOME/.bash_aliases" ] && \. "$HOME/.bash_aliases"
[ -r "/usr/share/bash-completion/bash_completion" ] && \. "/usr/share/bash-completion/bash_completion"

complete -cf sudo

shopt -s checkwinsize
shopt -s expand_aliases
shopt -s histappend

# prompt colors
if [[ ${EUID} == 0 ]]; then
  PS1='\[\033[01;31m\][\h\[\033[01;36m\] \W\[\033[01;31m\]]\$\[\033[00m\] '
else
  PS1='\[\033[01;36m\][\u@\h\[\033[01;37m\] \W\[\033[01;36m\]]\$\[\033[00m\] '
fi

if type -P dircolors >/dev/null; then
  if [[ -f "$HOME/.dir_colors" ]]; then
    eval $(dircolors -b "$HOME/.dir_colors")
  elif [[ -f "/etc/DIR_COLORS" ]]; then
    eval $(dircolors -b "/etc/DIR_COLORS")
  fi
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

export PATH="$PATH:$(yarn global bin)"

export DENO_INSTALL="/home/eliseu/.deno"

export PATH="$DENO_INSTALL/bin:$PATH"

export EDITOR="vim"
[ -f "/opt/google/chrome/chrome" ] && export BROWSER="/opt/google/chrome/chrome"
