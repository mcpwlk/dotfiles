# ~/.bash_functions: this file contains functions and aliases
# it is supposed to be sourced in .bashrc

function lp {
    ls -l --color "$@" | less -R
}

function llp {
    ls -al --color "$@" | less -R
}

function lsp {
    ls --color "$@" | less -R
}

# cawk - awk for working with csv files
function cawk {
    awk -F, -vOFS=, "$@"
}

# title() - set title for the enclosing terminal window
function title {
    _set_title "$@"
    export _TERMINAL_WINDOW_TITLE="$@"
}

# untitle() - unset title of the enclosing terminal window
function untitle {
    unset _TERMINAL_WINDOW_TITLE
}

function ts {
    date -d "1970-01-01 UTC + $* sec"
}

function _set_title {
    echo -ne "\033]0;"
    echo -ne "$@"
    echo -ne "\007"
}

# Aliases for bash shell
alias l='ls -l'
alias ll='ls -al'
alias la='ls -A'

alias j='jobs -l'
alias h='history'
alias cd..='cd ..'
alias r='fc -s'

alias g=git

alias gimp=pinta

which xclip &> /dev/null && alias xclip='xclip -selection clipboard'
