#!/usr/bin/zsh

initialPath=`pwd`

function dirExist folder {
    if [ -d $1 ]; then
        echo "O diretório existe e seu conteúdo é:"
        cd ~; ls;
    else
        echo "Diretório $1 não encontrado"
    fi
}
echo '------------'

dirExist ~
dirExist ~/naoEncontrado

function thisExist path {
    if [ -e $1 ]; then
        echo -n "O path é válido"
        if [ -f $1 ]; then
            echo " e é um arquivo"
            return 0
        else
            echo " e é um diretório"
            return 0
        fi
    else
        echo "O path não foi encontrado"
    fi
    return -1
}
echo '------------'

echo $initialPath
cd $initialPath

thisExist testFolder
thisExist aula16.sh
thisExist ~/naoEncontrado
echo '------------'

function readPermission path {
    if thisExist $1; then
        echo "tail -5 $1: "
        tail -5 $1
    elif [ -d thisExist $1 ]; then
        echo "$1 é um diretório"
    else
        echo "Sem permissão de leitura"
    fi
}

readPermission "/etc/passwd"
readPermission "testFolder/teste_aula04"

echo '------------'
if [ -d testFolder ]; then
    echo "Conteúdo do diretório test:"
    cd testFolder; ls -l log*
else
    echo "Diretório não encontrado"
fi
