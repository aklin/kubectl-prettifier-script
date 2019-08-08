#!/bin/bash
# VERSION 1.0-beta
# https://git.io/fj7Te

# `man highlight` for options.
HL_OUTPUT="-O truecolor"
# Sets the input format of highlight.
HL_SYNTAX_PARAM=

# Parse parameters
function detect_params {
  arr=("$@")

  for i in "${!arr[@]}"; do
    arg="${arr[$i]}"

    # param starts with -o
    if [[ $arg == -o* ]]; then

      # combine current and next parameter
      match="$arg${arr[$((i+1))]}"

      if [[ $match == -o*yaml ]]; then
        HL_SYNTAX_PARAM="-S yaml"
        break

      elif [[ $match == -o*json ]]; then
        HL_SYNTAX_PARAM="-S json"
        break
      fi
    fi
  done
}

detect_params "$@"

if [ -z "$HL_SYNTAX_PARAM" ]
then
  kubectl "$@"
else
  kubectl "$@" | highlight $HL_SYNTAX_PARAM $HL_OUTPUT



