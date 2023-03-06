arrayFrutas=(laranja morango acerola abacaxi) # [0-3]

echo ${arrayFrutas[*]} # all
echo ${arrayFrutas[2]} # acerola
echo ${arrayFrutas[4]} # null -> vazio

export arrayFrutas

echo '------------'
echo 'removendo segundo item'
unset arrayFrutas[1]
echo ${arrayFrutas[*]} # all
echo 'atenção! índice NÃO é trocado, índice 1 fica vazio'

echo '------------'
echo 'trocando terceiro item (lembrando que o segundo item é o [vazio])'
arrayFrutas[2]=banana
echo ${arrayFrutas[*]} # all

echo '------------'
echo 'adicionando item'
arrayFrutas[4]=acerola
echo 'tamanho explicito do array'
echo ${arrayFrutas[*]} # all

echo '------------'
echo 'adicionando item'
arrayFrutas[${#arrayFrutas[@]}]=implicito
echo 'tamanho implicito do array'
echo ${arrayFrutas[*]} # all

echo '------------'
arrayFrutas[${#arrayFrutas}]=implicito
arrayFrutas[${#arrayFrutas[@]}]=implicito
arrayFrutas[${#arrayFrutas[@]}]=implicito
echo ${arrayFrutas[*]} # all
echo 'entretanto ${#array[@]} nao funciona para sempre...'
echo 'pq? acabou tamanho dinamico da variavel no shell?'

unset ${arrayFrutas[*]}