#!/bin/sh

case $1 in
  walpurgis)
    stow -R walpurgis universal snippets
    ;;
  grimoire)
    stow -R grimoire universal snippets
    ;;
  else)
    echo "not valid!" 
    ;;
esac
