#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc
[[ -f ~/.bash_aliases ]] && . ~/.bash_aliases

#
# exports
#

export EDITOR="vi"
[ -f "/opt/google/chrome/chrome" ] && export BROWSER="/opt/google/chrome/chrome"
