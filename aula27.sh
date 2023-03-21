#!/bin/bash

# whiptail \
#     --title "Caixa messagebox" \
#     --msgbox "Criando uma caixa de mensagem usando o whiptail. Escolha OK para continuar." \
#     --fb 10 50

# if whiptail \
#     --title "Testando opções Yes/No" \
#     --yesno "Escolha Yes ou No." \
#     --fb 10 50
# then
#     echo "$? Você escolheu Yes"
# else
#     echo "$? Você escolheu No"
# fi

# if whiptail \
#     --title "Escolhendo o tipo de instalação" \
#     --yes-button "Completa" \
#     --no-button "Personalizada" \
#     --yesno "Escolha o tipo de instalação desejada: " \
#     --fb 10 50
# then
#     echo "$? Você escolheu Completa"
# else
#     echo "$? Você escolheu Personalizada"
# fi

# whiptail --title "Caixa infobox" --msgbox "Esta é uma caixa de informações. Pressione qualquer tecla para continuar." --fb 10 50

# nome=$(whiptail \
#         --title "Entrada de nome do usuário" \
#         --inputbox "Digite seu nome: " \
#         --fb 10 60 3>&1 1>&2 2>&3
#     )
# statusSaida=$?

# if [ $statusSaida -eq 0 ]; then
#     echo "O nome digitado foi: $nome"
# else
#     echo "Input cancelado pelo usuário"
# fi

cidade=$(whiptail \
    --title "Listagem de Cidades" \
    --checklist \
    --fb "Quais cidades deseja visitar?" 15 50 5 \
    "Londres" "Inglaterra" ON \
    "Berlim" "Alemanha" OFF \
    "Toronto" "Canadá" OFF \
    "Abu Dhabi" "Emirados Árabes" OFF \
    "Pequim" "China" OFF 3>&1 1>&2 2>&3)
statusSaida=$?

if [ $statusSaida -eq 0 ]; then
    echo "As cidades escolhidas foram: $cidade"
else
    echo "Input cancelado pelo usuário"
fi