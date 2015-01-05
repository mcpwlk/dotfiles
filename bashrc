# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# append to the history file, don't overwrite it
shopt -s histappend

# disable control flow characters
stty -ixon

# ignore duplicates and lines beginning with whitespace in history
export HISTCONTROL=ignoreboth 
export HISTSIZE=45000
export HISTFILESIZE=45000
export HISTTIMEFORMAT=%y%m%d_%H%M%S%t

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

if [ -f ~/.bash_prompt ]; then
    . ~/.bash_prompt
fi

if [ -f ~/.bash_functions ]; then
    . ~/.bash_functions
fi

if [ -f ~/.bash_private ]; then
    . ~/.bash_private
fi

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    eval "`dircolors -b`"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    #alias grep='grep --color=auto'
    #alias fgrep='fgrep --color=auto'
    #alias egrep='egrep --color=auto'
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

# Some enviromental variables
export EDITOR=vim
export PAGER=less
#export PATH="$PATH:~/bin"
export PYTHONPATH=$HOME/lib/python2.7/
