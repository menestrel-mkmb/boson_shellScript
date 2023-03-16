#!/usr/bin/zsh

function locateMe where {
case $1 in
quarto)
    echo "Você está no quarto";;
cozinha)
    echo "Você está na cozinha";;
sala)
    echo "Você está na sala";;
banheiro | lavanderia)
    echo "Você está na área dos fundos";;
*)
    echo "Você não está em casa";;
esac
}

locateMe quarto
locateMe rua
locateMe lavanderia