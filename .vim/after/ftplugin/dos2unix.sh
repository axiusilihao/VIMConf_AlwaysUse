#!/bin/sh
# Ctrl+V+M --> 

if [ "$1" == "-h" ]; then
    echo -e "\033[0;31;1mUsage:\033[0m"
    echo "    dos2unix.sh [dir/filepath]"
    echo -e "\033[0;31;1mArgument:\033[0m"
    echo "    1. no arg means convert all .c/.h files in current dir"
    echo "    2. dir arg means convert all .c/.h files in specific dir"
    echo "    3. filepath arg means convert the specific file"
fi

sdir=$1
if [ -z $sdir ]; then
        sdir=.
fi

if [ -f $sdir ]; then
    file=$sdir
    echo $file
    if [[ -s $file ]] ; then
        sed 's///' $file > $file.tmp
        mv $file.tmp $file
    fi
elif [ -d $sdir ]; then 
    for file in `find $sdir -name "*.vim"`
    do
        echo $file
        if [[ -s $file ]] ; then
            sed 's///' $file > $file.tmp
            mv $file.tmp $file
        fi
    done
fi
