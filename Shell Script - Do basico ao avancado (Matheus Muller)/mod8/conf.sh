#!/usr/bin/env bash

# Variáveis
ARQUIVO_DE_CONFIGURACAO="configuracao.cf"
USAR_MAIUSCULAS=
USAR_CORES=
MENSAGEM="Mensagem de teste"

VERMELHO="\033[31;1m"
VERDE="\033[32;1m"

# Testes
#[ ! -r "$ARQUIVO_DE_CONFIGURACAO" ] && echo "Não temos acesso a leitura" && exit 1

while read -r linha; do
  [ "$(echo $linha | cut -c1)" = "#" ] && continue
  [ ! "$linha" ] && continue
  echo "$linha"
done <"$ARQUIVO_DE_CONFIGURACAO"
