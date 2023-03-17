#!/usr/bin/zsh

var=50;

function subTwo number limit {
    test=$1
    until [ $test -eq $2 ]; do
        echo "$test"
        test=$[ $test - 2 ]
    done
}

subTwo 50 0
echo '------------'