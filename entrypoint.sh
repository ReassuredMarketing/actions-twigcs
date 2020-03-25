#!/bin/bash -l
set -e

PHP_FULL_VERSION=$(php -r 'echo phpversion();')

echo "======================"
echo "=   Running TwigCS   ="
echo "======================"
echo "PHP Version : ${PHP_FULL_VERSION}"

if [[ -n "$INPUT_SEVERITY_TOLERANCE" ]]; then
    options+=(-c "$INPUT_SEVERITY_TOLERANCE")
fi

if [[ -n "$INPUT_IGNORE_FOLDER" ]]; then
    options+=(-c "$INPUT_IGNORE_FOLDER")
fi

twigcs $INPUT_DIR "${options[@]}"