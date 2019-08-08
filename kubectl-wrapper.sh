#!/bin/bash
# VERSION 1.0-beta
# https://git.io/fj7Te

# `man highlight` for options.
HL_OUTPUT="-O truecolor"
# Sets the input format of highlight.
HL_SYNTAX_PARAM=

# Detect yaml or json output and highlight accordingly.
function detect_hl {
  arr=("$@")

  for arg in "${arr[@]}"; do

    case $arg in
#      -o*)
        ;;
      "-oyaml")
        ;&
      "-o=yaml")
        HL_SYNTAX_PARAM="-S yaml"
        break
        ;;
      "-ojson")
        ;&
      "-o=json")
        HL_SYNTAX_PARAM="-S json"
        break
        ;;
      *)
        ;;
    esac
  done
}


# TODO: Support space between arguments - `-o yaml`

detect_hl "$@"


if [ -z "$HL_SYNTAX_PARAM" ]
then
  kubectl "$@"
else
  kubectl "$@" | highlight $HL_SYNTAX_PARAM $HL_OUTPUT



