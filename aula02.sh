#!/bin/bash

echo $TERM
echo $HOME
echo $UID

printenv | grep LANG

#variáveis
string='hello world'
echo $string
export string

echo 'changing to bash to show export'
bash | echo $string || exit
echo 'back to '$SHELL

unset string
echo 'removed string variable'
echo $string