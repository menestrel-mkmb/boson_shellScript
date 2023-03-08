#!/usr/bin/zsh

# Informações básicas sobre o usuário:
echo "Usuário: $USER\nHome dir: $HOME\nUID do usuário: $UID"

echo '------------'
# Teste de variável
idade=25; nome="Monica"
echo "A $nome tem $idade anos"

echo '------------'
dia=`date`
echo "a data é $dia"

echo -n "a data é "; date


echo '------------'
echo " Copiar a listagem de um diretório para arquivos únicos, de acordo com data e hora."
arq=`date +%d-%m-%y_%H-%M`
ls -laF ~ > ./testFolder/log_$arq.txt