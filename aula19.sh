#!/usr/bin/zsh

for item in pastel pizza esfirra 'pão de queijo'
do
    echo "$item"
done

echo '------------'
arquivo=./testFolder/arq_nomes.txt
IFSOLD=$IFS
IFS=$'\n'

for nome in `cat $arquivo`; do
    echo "O nome é $nome"
done

IFS=$IFSOLD

echo '------------'
for item in ./testFolder/*; do
    if [ -d "$item" ]; then
        echo "dir $item"
    elif [ -f "$item" ]; then
        echo "file $item"
    fi
done