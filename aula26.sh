#!/bin/bash

read -p "Digite seu nome: "
echo "Seu nome é $REPLY"
printf "Digite sua idade: "
read idade
echo "Você tem $idade anos"

echo '------------'
echo -n "Digite seu nome: "
if read -t 4 nome; then
    echo Olá $nome, tudo bem por aí?
    exit 0
else
    echo "error 100: timeout"
    exit 100
fi

echo '------------'
echo "Deseja prosseguir com a operação [s/n]?"
read -n1 resposta
case $resposta in
    S | s)  echo "Continuando"
            exit 0;;
    N | n)  echo "Cancelada pelo usuário"
            exit 130;;
    *)      echo "Opção inválida"
            exit 127;;
esac

echo '------------'
read -s -p "Digite sua senha: "
echo "senha: $REPLY"

echo '------------'
function readFile {
    contador=1
    if [ -z $1 ]; then
        return 127
    fi
    cat $1 | while read linha;
    do
        echo "L $contador: $linha"
        contador=$[ $contador + 1 ]
    done
    return 0
}

readFile ./testFolder/arq_nomes.txt