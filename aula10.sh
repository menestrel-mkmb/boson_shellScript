#!/usr/bin/zsh

var1=$[2+6];var2=$[$var1*2]
echo $var1 $var2


echo '------------'
var1=10; var2=5; var3=2;
var4=$[$var1 * ($var2 - $var3)]
echo "o resultado do cálculo é $var4"

echo '------------'
var1=9; var2=2;
var3=$[$var1 / $var2];
echo "o resultado do cálculo é $var3" # truncando inteiro