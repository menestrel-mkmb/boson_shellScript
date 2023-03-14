#!/usr/bin/zsh

var1="michael";var2="minstrel"

if ls /home/$var1; then
    echo "Diretório do usuário $var1 encontrado."
elif ls /home/$var2; then
    echo "Diretório do usuário $var2 encontrado."
else
    echo "Nenhum diretório de usuário encontrado."
fi
echo '------------'