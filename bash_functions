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

# title() - set title for an enclosing terminal window
function title {
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

which xclip &> /dev/null && alias xclip='xclip -selection clipboard'
