# Command line calculator
calc ()
{ awk "BEGIN{ printf $* ; print \"\" }"; }

# coles() - displays input files in neat format in less without word wrap
function coles() {
    column -t -s$'\t' "$@" | less -S
}
# summate() - sums the given column of an input; if no argument, sums the first column
function summate { 
    if [ "$1" = "-c" ]
    then
        shift
        local column=$1
        shift
    else
        local column=1
    fi
    awk "{sum+=\$$column} END {print sum}" "$@"
}

function lp {
    ls -l --color "$@" | less -R
}

function llp {
    ls -al --color "$@" | less -R
}

function lsp {
    ls --color "$@" | less -R
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
