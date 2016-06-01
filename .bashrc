# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# enable terminal colors (mac only)
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export EDITOR=vim

# prompt
export PS1="\e[0;37m[\u@\H \W] \e[m"

# standard commands
alias ll='ls -l'
alias rm='rm -i'
alias updatedb='/usr/libexec/locate.updatedb'
alias vi='mvim'

# bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

complete -C aws_completer aws

# Servers/Services
alias start_pg='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias stop_pg='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log stop'

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# added by travis gem
[ -f /Users/lon/.travis/travis.sh ] && source /Users/lon/.travis/travis.sh

# spoton
. /Users/lon/code/spoton/scripts/spoton_funcs.sh
