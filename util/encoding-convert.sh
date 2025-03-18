#!/usr/bin/env bash


error=$( { iconv -c -f utf-8 -t latin1 < $1 | iconv -f cp1251 -t utf-8 > utf.sql; } 2>&1 | cut -d' ' -f 7 )


# echo $error
# printf '-' | dd bs=1 seek=$error conv=notrunc of=2408261241.sql
# ./$0 $1
