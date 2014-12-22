#! /usr/bin/env bash

# install.sh -- installation script for dotfiles

cd `dirname $0`

for dotfile in *
do
    if [ $dotfile == install.sh ]
    then
        continue
    fi

    echo -n "${dotfile}: "

    if [ -L ~/.$dotfile ]
    then
        echo "Already a link"
    elif diff -r ~/.$dotfile $dotfile &> /dev/null
    then
        rm -ir ~/.$dotfile
        ln -s `pwd -P`/$dotfile ~/.$dotfile
        echo OK
    else
        echo Dotfiles DIFFER: diff -rq ~/.$dotfile `pwd -P`/$dotfile
    fi
done
