#!/usr/bin/zsh

ls
echo $?

lsx
echo $?

echo '------------'
var1=10
var2=2
result=`echo "scale=0; $var1 * $var2" | bc`
exit $result