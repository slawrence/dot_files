#!/bin/bash
export PATH=/usr/bin:/opt/subversion/bin:/opt/local/bin:$PATH
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
export MAVEN_OPTS=-Xmx1024m
export HISTCONTROL='ignoreboth:erasedups'
export HISTIGNORE="ls:passwd;"
export HISTSIZE=5000

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

