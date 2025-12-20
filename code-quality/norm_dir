#!/bin/bash

NORM_DIR=$(pwd)

read -p "Put dir you want to norminette (press Enter for current directory): " INPUT_DIR
NORM_DIR=${INPUT_DIR:-$NORM_DIR} #if not provided the expression :- means use the fallback value (if user pressed enter)

echo "Norminetting dir: $NORM_DIR"

find "$NORM_DIR" -type f \( -name "*.c" -o -name "*.h" \) -exec python3 -m c_formatter_42 {} \;

