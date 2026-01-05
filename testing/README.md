# Testing & Evaluation Tools

Scripts for testing and evaluating 42 projects.

## Scripts

### `push_swap_tester`
Comprehensive testing suite for the push_swap project.

**Usage:**
```bash
./push_swap_tester [hardmode]
```

**Features:**
- Tests arrays of size 3, 5, 100, and 500
- Color-coded output (green/yellow/red for performance)
- Operation counting
- Hardmode: includes edge cases and overflow tests
- Timeout protection (10s default, 3s in hardmode)

**Requirements:**
- `./push_swap` executable in current directory
- `./checker_linux` executable in current directory

---

### `gnl_eval`
Simple Get Next Line (GNL) testing script.

**Usage:**
```bash
./gnl_eval
```

**What it tests:**
- Normal files with newlines
- Files without final newline
- Empty lines
- Empty files
- Invalid file descriptors
- Multiple buffer sizes (1, 5, 42, 1000)
- Memory leaks (if valgrind available)

**Requirements:**
- `get_next_line.c`
- `get_next_line_utils.c`
- `get_next_line.h`

---

### `runner`
Interactive Valgrind wrapper for testing executables.

**Usage:**
```bash
./runner
```

**Features:**
- Saves default project directory and executable
- Automatically finds executables in project
- Full Valgrind leak checking
- Custom arguments support
- Tracks file descriptors
- Shows memory leak origins

**Valgrind flags:**
- Standard: `--leak-check=full`
- Full: `--leak-check=full --track-origins=yes --track-fds=yes --show-leak-kinds=all`

---

### `run_shell`
Quick Valgrind runner specifically for minishell.

**Usage:**
```bash
./run_shell
```

**Valgrind flags used:**
- `--leak-check=full`
- `--trace-children=yes`
- `--track-fds=yes`
- `--show-leak-kinds=all`
- Uses `readline_curses.supp` suppression file

**Requirements:**
- `./minishell` executable
- `readline_curses.supp` file (optional)
