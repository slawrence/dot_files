#!/bin/bash
export PATH=/usr/bin:/opt/subversion/bin:/opt/local/bin:$PATH
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Scripts from repos
PATH=$PATH:$HOME/repos/git-submodule-tools #add git submodule scripts
PATH=$PATH:$HOME/.cabal/bin

# Custom Scripts folder in $HOME/bin
PATH=$PATH:$HOME/bin # Add custom scripts
PATH=$PATH:$HOME/bin/cvsignore

export MAVEN_OPTS=-Xmx1024m

# Set default editor to vim
export EDITOR=vim
set -o vi

# Color prompt
# \e[  - start color scheme
# \e[m - stop color scheme
PS1='\[\e[0;31m\]\u\[\e[m\]\[\e[0;33m\] \W\$\[\e[0m\] '

# Avoid duplicates in bash command history
export HISTCONTROL='ignoreboth:erasedups'

# Ignore password stuff, passwd
export HISTIGNORE="ls:passwd;"

# Increase history size
export HISTSIZE=5000

# Set LANG/encoding
export LANG=en_US.utf-8

# Resolve color issues
export TERM=screen-256color

#alias files
if [ -f $HOME/.alias_private ]
then
    source $HOME/.alias_private
fi
if [ -f $HOME/.alias_work ]
then
    source $HOME/.alias_work
fi
if [ -f $HOME/.alias_general ]
then
    source $HOME/.alias_general
fi


