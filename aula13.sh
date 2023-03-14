#!/usr/bin/zsh

if cd /
then
    echo "Diretório raiz encontrado"
fi

echo '------------'
searchTest(){
    if ls ~/test
    then
        echo "Diretório teste encontrado na home."
    else
        echo "Diretório teste NÃO encontrado na home."
    fi
}

searchTest
mkdir ~/test
searchTest