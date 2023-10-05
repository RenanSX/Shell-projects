#!/usr/bin/env bash
ARQUIVO_DE_TITULOS="titulos.txt"
VERMELHO="\033[31;1m"
VERDE="\033[32;1m"

[ ! -x "$(which lynx)" ] && sudo apt install lynx -y # Lynx instalado?

lynx -source http://lxer.com/ | grep blurb | sed 's/<div.*line">//' | sed 's/<\/span.*//' >$ARQUIVO_DE_TITULOS

while read -r titulo_lxer; do
  echo -e "${VERMELHO}Titulo: ${VERDE}$titulo_lxer"
done <"$ARQUIVO_DE_TITULOS"
