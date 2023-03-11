#!/usr/bin/zsh

echo '------------'
bc -q << EOF
scale=2
2 / 4
quit
EOF

echo '------------'
var1=`echo "scale=2; 2 / 5" | bc`
echo "Resultado: $var1"

echo '------------'
var1=100; var2=30;
var3=`echo "scale=4; $var1 / $var2" | bc`
echo "Resultado: $var3"

echo '------------'
var1=6; var2=5; var3=4;
var4=`bc << EOF
scale=4
a=($var1 * $var2)
b=($var3 + $var1)
a+b
EOF
`
echo "Resultado: $var4"