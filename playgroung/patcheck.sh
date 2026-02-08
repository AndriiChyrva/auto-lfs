#!/bin/sh
pattern="$1"
shift
for string
do
  if expr "$string" : "$pattern$" >/dev/null 2>&1; then
    echo "regex: $string matched $pattern."
  else
    echo "regex: $string didn't match $pattern."
  fi
  case $string in
    $pattern) echo "shell: $string matched $pattern.";;
    *) echo "shell: $string didn't match $pattern.";;
  esac
done
