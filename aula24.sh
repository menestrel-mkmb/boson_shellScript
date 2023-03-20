#!/usr/bin/zsh

function sumAll {
    if [ -z $1 ]; then
        echo "error: noparam"
        return 3
    else
        number=0
        while [ -n "$1" ]; do
            number=$[ $number + $1 ]
            shift
        done
        echo "Resultado da soma: $number"
        return 0
    fi
}

sumAll 30 10 5 4 1 2 9 8 34
sumAll
sumAll 4
sumAll 4 6

echo '------------'
function printParam {
    initialParam=0
    while [ -n "$1" ]; do
        initialParam=$[ $initialParam + 1 ]
        echo "O parâmetro $initialParam tem o valor $1"
        shift
    done
    if [ $initialParam -ne 0 ]; then
        return 0
    else
        echo "Nenhum parâmetro foi passado"
        return 3
    fi
}

printParam maça
printParam maça uva
printParam
printParam teste 5