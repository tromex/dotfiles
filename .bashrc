###############################################################################
# TROMEX BASHRC
###############################################################################

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoredups

# Prompt
BGREEN='\[\033[1;32m\]'
GREEN='\[\033[0;32m\]'
BRED='\[\033[1;31m\]'
RED='\[\033[0;31m\]'
BBLUE='\[\033[1;34m\]'
BLUE='\[\033[0;34m\]'
NORMAL='\[\033[00m\]'
PS1="${BLUE}(${GREEN}\w${BLUE}) ${GREEN}\$ ${NORMAL}"

# Leave some commands out of history log
export HISTIGNORE="&:??:[ ]*:clear:exit:logout"

# Default editor
export EDITOR=vim

# List grep
alias lg='ll | grep'

# Directory navigation aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

#netinfo - shows network information for your system
netinfo ()
{
    echo "--------------- Network Information ---------------"
    /sbin/ifconfig | awk /'inet addr/ {print $2}'
    /sbin/ifconfig | awk /'Bcast/ {print $3}'
    /sbin/ifconfig | awk /'inet addr/ {print $4}'
    /sbin/ifconfig | awk /'HWaddr/ {print $4,$5}'
    myip=`lynx -dump -hiddenlinks=ignore -nolist http://checkip.dyndns.org:8245/ | sed '/^$/d; s/^[ ]*//g; s/[ ]*$//g' `
    echo "${myip}"
    echo "---------------------------------------------------"
}
###

# Completion-aware g<alias> bash aliases for each of the git aliases
# git aliases are in .gitconfig
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

function_exists() {
    declare -f -F $1 > /dev/null
    return $?
}

for al in `__git_aliases`; do
   alias g$al="git $al"

   complete_func=_git_$(__git_aliased_command $al)
   function_exists $complete_fnc && __git_complete g$al $complete_func
done
###
