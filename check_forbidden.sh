#!/bin/bash
###
forbidden_funcs=("printf" "execve")

for func in "${forbidden_funcs[@]}"; do
    echo "Checking for: $func"
    grep -rnw . -e "$func" | grep allowed
done
