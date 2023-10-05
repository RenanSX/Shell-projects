#!/usr/bin/env bash

PARAMETRO=1

if [ $PARAMETRO -gt 0 ]; then     #Valida maior que 0?
  if [ $PARAMETRO -gt 1 ]; then   #Valida maior que 1?
    if [ $PARAMETRO -gt 2 ]; then #Valida maior que 2?
      echo "oi"
    fi
  fi
fi
