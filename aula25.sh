#!/usr/bin/zsh

function verifyOptions {
    while [ -n "$1" ]; do
        case "$1" in
            -a) echo "-a existe";;
            -b) echo "-b existe";;
            -c) echo "-c existe";;
            -*) echo "$1 não existe";;
        esac
        shift
    done
}

verifyOptions -a
verifyOptions -b -c
verifyOptions -s
verifyOptions -a -d
verifyOptions -r -a
verifyOptions -r -x
