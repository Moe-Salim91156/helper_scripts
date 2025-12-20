# Code Quality Tools

Scripts for checking code quality, finding forbidden functions, and maintaining code standards.

## Scripts

### `check_forbidden`
Checks for forbidden functions in your code.

**Usage:**
```bash
./check_forbidden
```

**Checks for:**
- `printf`
- `execve`

**What it does:**
- Recursively searches current directory
- Shows line numbers and file paths
- Excludes lines with "allowed" comment

---

### `check_forbidden_libft`
Comprehensive checker for libft projects.

**Usage:**
```bash
./check_forbidden_libft.sh
```

**Forbidden functions checked:**
- printf, execve, system, exit, abort
- scanf, gets, getchar, putchar, puts
- sprintf, fprintf, snprintf

**Standard library functions checked:**
Ensures you're using `ft_` versions instead of standard C library functions:
- String functions: strlen, strlcpy, strlcat, strchr, strrchr, etc.
- Memory functions: memset, bzero, memcpy, memmove, etc.
- Character checks: isalpha, isdigit, isalnum, etc.
- Conversion: atoi, toupper, tolower

---

### `norm_dir`
Automatically formats C code according to 42 norminette standards.

**Usage:**
```bash
./norm_dir
```

**Interactive mode:**
- Prompts for directory (defaults to current)
- Formats all `.c` and `.h` files

**What it does:**
- Uses `c_formatter_42` Python module
- Recursively formats files
- Applies 42 coding standards

**Requirements:**
- Python 3
- `c_formatter_42` module installed
  ```bash
  pip install c-formatter-42
  ```

---

### `todo_finder`
Scans code for TODO and FIXME comments.

**Usage:**
```bash
./todo_finder
```

**What it does:**
- Searches all `.c` and `.h` files
- Finds TODO and FIXME comments
- Shows file name, line number, and full line content

**Output format:**
```
📄 path/to/file.c:42: // TODO: implement this function
```
