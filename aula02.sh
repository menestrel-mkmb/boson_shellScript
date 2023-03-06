#!/bin/bash

echo $TERM
echo $HOME
echo $UID

printenv | grep LANG

#variáveis
stringHello='hello world'
echo $stringHello
export stringHello

echo 'changing to bash to show export'
bash | echo $stringHello || exit
echo 'back to '$SHELL

unset stringHello
echo 'removed stringHello variable'
echo $stringHello