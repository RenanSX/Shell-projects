#!/usr/bin/env bash

USUARIOS="$(cat /etc/passwd | cut -d : -f 1)"
MENSAGEM_USO="
  $(basename $0) - [Opções]

  -h - Menu ajuda
  -v - Versão
  -s - Ordenar a saída
  -m - Coloca em maiúsculo
"
VERSAO="v1.2"
CHAVE_ORDENA=0
CHAVE_MAIUSCULO=0

#if [ "$1" = "-h" ]; then
#  echo "$MENSAGEM_USO" && exit 0
#fi
#
#if [ "$1" = "-v" ]; then
#  echo "$VERSAO" && exit 0
#fi
#
#if [ "$1" = "-s" ]; then
#  echo "$USUARIOS" | sort && exit 0
#fi

set -x
while test -n "$1"; do
  case "$1" in
  -h) echo "$MENSAGEM_USO" && exit 0 ;;
  -v) echo "$VERSAO" && exit 0 ;;
  -s) CHAVE_ORDENA=1 ;;
  -m) CHAVE_MAIUSCULO=1 ;;
  *) echo "Opção inválido, valide o -h." && exit 1 ;;
  esac
  shift
done
set +x

[ $CHAVE_ORDENA -eq 1 ] && USUARIOS=$(echo "$USUARIOS" | sort)
[ $CHAVE_MAIUSCULO -eq 1 ] && USUARIOS=$(echo "$USUARIOS" | tr [a-z] [A-Z])

echo "$USUARIOS"
