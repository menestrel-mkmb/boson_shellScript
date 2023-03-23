#!/bin/bash

for num in 1 2 3 4 5 6 7 8 9 10
do
    if [ $num -eq 6 ]; then
        break
    fi
    echo "Número: $num"
done
echo "Laço for finalizado"
unset num;

echo '------------'
read -p "Digite um número entre 1 e 10: " num

while [ $num -gt 0 ]; do
    if [ $num -gt 10 ]; then
        break
    fi
    echo "Número digitado: $num"
    read -p "Digite um número entre 1 e 10: " num
done

 echo -n "Você encerrou o programa digitando um valor "
if [ $num -lt 1 ]; then
    echo "menor que 1"
else
    echo "maior que 10"
fi