#!/usr/bin/zsh

echo 'Inserindo ao arquivo'
ls -laF  > testFolder/cat_aula09.txt
cat testFolder/cat_aula09.txt

echo '------------'
echo 'Acrescentando ao fim arquivo'
date >> testFolder/cat_aula09.txt
cat testFolder/cat_aula09.txt

echo '------------'
echo 'Contando palavras no arquivo'
wc < testFolder/cat_aula09.txt

echo '------------'
echo 'Redirecionamento inline'
wc << EOF
Teste de redirecionamento inline
Curso de Shell Scripting
EOF