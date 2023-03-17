#!/usr/bin/zsh

var=100

function echoArray number limit {
    testLimit=$1
    while [ $testLimit -gt $2 ]; do
        echo "$testLimit"
        testLimit=$[$testLimit-1]
    done
}

echoArray $var 0

echo '------------'