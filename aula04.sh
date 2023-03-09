#!/usr/bin/zsh

alias mo='more'
alias ll='ls -l'

alias up='sudo pacman -Syyu'

unalias mo
echo 'alias nao funfa no terminal interno do vscode'

echo '------------'
addLine(){
    cd ./testFolder/
    echo 'linha adicionada' >> teste_aula04 
}

typeset -f | grep addLine
addLine