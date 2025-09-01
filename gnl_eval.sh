#!/bin/bash

# Simple Get Next Line Test Script
# Usage: ./test_gnl.sh

echo "=== SIMPLE GET_NEXT_LINE TEST ==="
echo

# Create test files
echo "Creating test files..."

# Test file 1 - Normal file
cat > test1.txt << EOF
Line 1
Line 2
Line 3
EOF

# Test file 2 - No final newline
printf "No newline at end" > test2.txt

# Test file 3 - Empty lines
cat > test3.txt << EOF
First line

Third line


Last line
EOF

# Empty file
touch empty.txt

# Create simple test program
cat > main.c << 'EOF'
#include "get_next_line.h"
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>

void test_file(char *filename) {
    printf("Testing %s:\n", filename);
    int fd = open(filename, O_RDONLY);
    if (fd == -1) {
        printf("  Error opening file\n");
        return;
    }
    
    char *line;
    int count = 1;
    while ((line = get_next_line(fd)) != NULL) {
        printf("  [%d]: '%s'\n", count++, line);
        free(line);
    }
    printf("  Final result: %s\n", line);
    close(fd);
    printf("\n");
}

int main() {
    printf("Buffer size: %d\n\n", BUFFER_SIZE);
    
    test_file("test1.txt");
    test_file("test2.txt"); 
    test_file("test3.txt");
    test_file("empty.txt");
    
    // Test invalid fd
    printf("Testing invalid fd (-1):\n");
    char *line = get_next_line(-1);
    printf("  Result: %s\n", line ? line : "NULL");
    if (line) free(line);
    
    return 0;
}
EOF

echo "Compiling and testing..."

# Test with different buffer sizes
for BUFFER_SIZE in 1 5 42 1000; do
    echo "--- BUFFER_SIZE = $BUFFER_SIZE ---"
    
    if gcc -Wall -Wextra -Werror -D BUFFER_SIZE=$BUFFER_SIZE main.c get_next_line.c get_next_line_utils.c -o gnl_test 2>/dev/null; then
        ./gnl_test
    else
        echo "Compilation failed with BUFFER_SIZE=$BUFFER_SIZE"
    fi
    echo
done

# Memory leak test (if valgrind available)
if command -v valgrind &> /dev/null; then
    echo "--- MEMORY LEAK TEST ---"
    gcc -g -D BUFFER_SIZE=42 main.c get_next_line.c get_next_line_utils.c -o gnl_test
    valgrind --leak-check=full --error-exitcode=1 ./gnl_test 2>&1 | grep -E "(ERROR SUMMARY|definitely lost|indirectly lost)"
fi

# Cleanup
rm -f gnl_test main.c test1.txt test2.txt test3.txt empty.txt

echo "Test completed!"
