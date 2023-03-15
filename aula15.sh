#!/usr/bin/zsh

var1=10;var2=15

if [ $var1 -gt 8 ]; then
    echo "A variável é maior que 8"
fi

if [ $var1 -eq $var2 ]; then
    echo "As variáveis são iguais"
else
    echo "As variáveis NÃO são iguais"
fi

echo '------------'
nome="michael"
if [ $USER = $nome ]; then
    echo "Olá $nome"
fi

fruta="maça"
if [ $fruta != laranja ]; then
    echo "Uma $fruta não é uma laranja"
else
    echo "A fruta é uma $fruta"
fi

echo '------------'
var1=abacate;var2=""
if [ -n $var1 ]; then
    echo "Variável não nula [ $var1 ]"
else
    echo "Variável nula"
fi

if [ -z $var2 ]; then
    echo "Variável nula"
else
    echo "Variável não nula"
fi