#!/bin/bash
export PATH=/usr/bin:/opt/subversion/bin:/opt/local/bin:$PATH
export MAVEN_OPTS=-Xmx1024m
export HISTCONTROL='ignoreboth:erasedups'
export HISTIGNORE="ls:passwd;"
export HISTSIZE=5000

#alias files
if [ -f $HOME/.alias_work ]
then
    source $HOME/.alias_work
fi

set -o vi

TERM=xterm-256color
function prompt {
    txtblk='\e[0;30m' # Black - Regular
    txtred='\e[0;31m' # Red
    txtgrn='\e[0;32m' # Green
    txtylw='\e[0;33m' # Yellow
    txtblu='\e[0;34m' # Blue
    txtpur='\e[0;35m' # Purple
    txtcyn='\e[0;36m' # Cyan
    txtwht='\e[0;37m' # White
    bldblk='\e[1;30m' # Black - Bold
    bldred='\e[1;31m' # Red
    bldgrn='\e[1;32m' # Green
    bldylw='\e[1;33m' # Yellow
    bldblu='\e[1;34m' # Blue
    bldpur='\e[1;35m' # Purple
    bldcyn='\e[1;36m' # Cyan
    bldwht='\e[1;37m' # White
    unkblk='\e[4;30m' # Black - Underline
    undred='\e[4;31m' # Red
    undgrn='\e[4;32m' # Green
    undylw='\e[4;33m' # Yellow
    undblu='\e[4;34m' # Blue
    undpur='\e[4;35m' # Purple
    undcyn='\e[4;36m' # Cyan
    undwht='\e[4;37m' # White
    bakblk='\e[40m'   # Black - Background
    bakred='\e[41m'   # Red
    bakgrn='\e[42m'   # Green
    bakylw='\e[43m'   # Yellow
    bakblu='\e[44m'   # Blue
    bakpur='\e[45m'   # Purple
    bakcyn='\e[46m'   # Cyan
    bakwht='\e[47m'   # White
    txtrst='\e[0m'    # Text Reset
    export PS1='\[\033[01;37m\]\u@\h:\W\$\[\033[01;37m\]\e[00m '
}
prompt

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
