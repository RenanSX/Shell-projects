#!/usr/bin/env bash

NOME="Renan

Silva"

echo "$NOME"

NUMERO_1=24
NUMERO_2=45
TOTAL=$(($NUMERO_1 * $NUMERO_2))

echo $TOTAL

SAIDA_CAT= $(cat /etc/passwd | grep renan)

echo "$SAIDA_CAT"

echo "---------------------------------------"

echo "Parametro 1: $1"
echo "Parametro 2: $2"
echo "Todos os parametros: $*"

echo "Quantos parametros tem? $#"

echo "Saída do último comando: $?"

echo "PID: $$"

echo $0
