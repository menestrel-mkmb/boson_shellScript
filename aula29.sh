#!/bin/bash

dialog --title "Titulo de exemplo" --msgbox "Mensagem de teste" 10 35

dialog --title "Caixa Yes/No" --yesno "Escolha entre Yes e No" 10 25

dialog --title "Caixa Aceito / Fechar" --yes-button "Aceitar" --no-button "Não aceitar e sair" --yesno "Termos de Uso" 10 40

nome=$(dialog --inputbox "Digite seu nome: " 10 25 --stdout)

echo $nome

sistema=$(dialog --menu "Escolha seu sistema: " 10 30 25 \
        1 "Linux" \
        2 "BSD" \
        3 "Android" \
        --stdout )

echo $sistema

data=$(dialog --calendar "Escolha a data" 0 0 --stdout)

echo $data

dialog --title "Sucesso" --infobox "Operação Concluída" 5 35; sleep 4; clear

item=$(dialog --radiolist "Escolha a cor: " 15 30 4 \
        "Verde" "" OFF \
        "Azul" "" OFF \
        "Amarelo" "" ON \
        "Roxo" "" OFF \
        --stdout )

echo $item