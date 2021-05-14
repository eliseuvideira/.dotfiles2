#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc
[[ -f ~/.bash_aliases ]] && . ~/.bash_aliases

#
# exports
#

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

PATH="$PATH:$(yarn global bin)"
PATH="$HOME/.deno/bin:$PATH"

export PATH=$PATH

export EDITOR="vim"
[ -r "/usr/bin/chromium" ]
[ -r "/opt/google/chrome/chrome" ] && export BROWSER="/opt/google/chrome/chrome"
