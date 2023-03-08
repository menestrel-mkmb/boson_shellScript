#!/usr/bin/zsh

# mostrar arquivos e diretórios da raiz
echo 'lista de /'
cd /
ls -laF

# mostrar usuário do shell
echo -n 'o usuário logado é '
whoami

echo "whoami" | sudo su