#!/bin/bash
export PATH=/usr/bin:/opt/subversion/bin:/opt/local/bin:$PATH
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# Scripts from repos
PATH=$PATH:$HOME/repos/git-submodule-tools #add git submodule scripts

# Custom Scripts folder in $HOME/bin
PATH=$PATH:$HOME/bin # Add custom scripts
PATH=$PATH:$HOME/bin/cvsignore

export MAVEN_OPTS=-Xmx1024m
export HISTCONTROL='ignoreboth:erasedups'
export HISTIGNORE="ls:passwd;"
export HISTSIZE=5000
export LANG=en_US.utf-8

#alias files
if [ -f $HOME/.alias_work ]
then
    source $HOME/.alias_work
fi
if [ -f $HOME/.alias_general ]
then
    source $HOME/.alias_general
fi

set -o vi

