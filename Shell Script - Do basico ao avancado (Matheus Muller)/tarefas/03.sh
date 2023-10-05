#!/usr/bin/env bash
#
# adiciona100Estrelas.sh - Adiciona vários asteriscos
#
# Autor:      Renan Silva
# Manutenção: Renan Silva
#
# ------------------------------------------------------------------------ #
#  Este programa irá cotar o último valor do Bitcoin com base na API xxxx
#
#  Exemplos:
#      $ ./adiciona100Estrelas.sh -d
# ------------------------------------------------------------------------ #
# Histórico:
#
#   v1.0 23/09/2023, Renan:
#       - Código finalizado
# ------------------------------------------------------------------------ #
# Testado em:
#   bash 5.1.16
# ------------------------------------------------------------------------ #

comeca=0
ate=100

[ $comeca -ge $ate ] && exit 1

for i in $(seq $comeca $ate)
  do 
    for j in $(seq $i $ate)
      do printf "*"
      done
    printf "\n"
  done