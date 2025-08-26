#!/bin/bash
forbidden_funcs="printf execve system exit abort scanf gets getchar putchar puts sprintf fprintf snprintf"

libc_funcs="strlen strlcpy strlcat strchr strrchr strncmp strnstr strdup atoi calloc malloc free memset bzero memcpy memmove memchr memcmp isalpha isdigit isalnum isascii isprint toupper tolower"

echo "Checking for forbidden functions..."
for func in $forbidden_funcs; do
    echo "Checking: $func"
    grep -rn "$func" . --include="*.c" --include="*.h"
done

echo ""
echo "Checking for C library functions that should use ft_ versions..."
for func in $libc_funcs; do
    echo "Checking: $func (should be ft_$func)"
    grep -rn "\b$func\b" . --include="*.c" --include="*.h"
done
