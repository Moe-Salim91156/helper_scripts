#!/bin/bash
# todo_tracker.sh - List all TODO and FIXME comments with file and full line context

echo "Scanning for TODOs and FIXMEs in source files..."

find . -type f \( -name "*.c" -o -name "*.h" \) | while read -r file; do
    grep -nE "TODO|FIXME" "$file" | while read -r line; do
        LINE_NO=$(echo "$line")
        echo "📄 $file:$LINE_NO"
    done
done

echo "Scan complete."
