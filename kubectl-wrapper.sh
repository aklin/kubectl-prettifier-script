#!/bin/bash

ARGS=["$@"]

# `man highlight` for options.
HL_OUTPUT="-O truecolor"
# Sets the input format of highlight.
HL_SYNTAX_PARAM=


for arg in $(ARGS)
case $arg in
  "-oyaml")
    ;&
  "-o=yaml")
    $HL_SYNTAX_PARAM="-S yaml"
    break
    ;;
  "-ojson")
    ;&
  "-o=json")
    $HL_SYNTAX_PARAM="-S json"
    break
    ;;
  *)
    ;;
esac

done

if [-z "$HL_SYNTAX_PARAM"]
then
  kubectl "$@"
else
  kubectl "$@" | highlight $HL_SYNTAX_PARAM $HL_OUTPUT
fi
