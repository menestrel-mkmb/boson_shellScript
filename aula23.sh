#!/usr/bin/zsh
function calcQuadrado {
quadrado=$[$1*$1]
echo "O resultado é $quadrado"
}
calcQuadrado 9

echo '------------'

function verifParam num param {
    if [ $1 -ne $2 ]; then
        echo "É esperado $1 parâmetro(s) para a função ao invés de $2"
        exit 3
    else
        exit 0
    fi
}

function triple num {
    errCode=`verifParam 1 $#`
    if [ -z $errCode ]; then
        result=$[ $1 * 3 ]
        echo "O resultado é $result"
    else
        echo "error: $errCode"
    fi
}

triple 3
triple
triple 5 4