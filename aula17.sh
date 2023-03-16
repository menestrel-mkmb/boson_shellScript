#!/usr/bin/zsh
function testWritePermission user file {
if [ $USER = $1 ] && [ -w $2 ]; then
    echo "O usuário $USER tem permissão para alterar o arquivo"
else
    echo "O usuário $USER NÃO tem permissão para alterar o arquivo"
fi
}

testWritePermission minstrel testFolder/doNotWrite