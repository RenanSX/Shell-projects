#!/usr/bin/env bash

# Minha resposta
for (( i = 0; i <= 10; i++ )); do
    if (( $i % 2 == 0 )); then
        echo "$i é divisível por 2"
    fi
done

# Resposta do professor
for i in $(seq 0 10)
do
    [ $(($i % 2)) -eq 0 ] && echo "Número $i é divisível por 2"
done