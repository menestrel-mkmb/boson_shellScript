#!/bin/bash

function mensagem {
    echo "Bóson Treinamentos"
}

function repeteFuncao {
    contador=1
    while [ $contador -lt $1 ]; do
        $2
        contador=$[ $contador + 1 ]
    done
    return 0
}

repeteFuncao 10 mensagem

echo '------------'
function quadrado {
    read -p "Digite um número entre 20 e 30: " numero
    echo $[ $numero * $numero ]
}

quadrado