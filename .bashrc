###############################################################################
# TROMEX BASHRC
###############################################################################

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoredups

# Export to PATH user gem directory
export PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"

# Colorized git prompt (default path on ARCH)
source /usr/share/git/completion/git-prompt.sh

# Bash completion for git (default path on ARCH)
source /usr/share/git/completion/git-completion.bash

# Prompt
PS1='\[\033[1;34m\](\[\033[0;34m\]\w\[\033[1;34m\])$(__git_ps1 " [%s]") \[\033[1;32m\]\$\e[0m '

# Datetime for history
export HISTTIMEFORMAT='%F %T '

# Leave some commands out of history log
export HISTIGNORE="&:??:[ ]*:clear:exit:logout:pwd:ls:vim"

# Default editor
export EDITOR=vim

# Force tmux to assume 256 colors terminal
alias tmux='tmux -2'

# List
alias ls='ls --color'
alias ll='ls -l'
alias lg='ll | grep'

# Directory navigation aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# Completion-aware g<alias> bash aliases for each of the git aliases
# git aliases are in .gitconfig

# (https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash)
source ~/scripts/git-completion.bash

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
