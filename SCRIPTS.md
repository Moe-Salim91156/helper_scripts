# Scripts Overview

Quick reference for all available scripts organized by category.

## 🔄 Git Tools (git/)

| Script | Purpose | Usage |
|--------|---------|-------|
| `push` | Quick commit & push | Interactive |
| `git_helper` | Interactive Git menu | Interactive |
| `copy_push` | Copy project & push | `./copy_push <source> <repo>` |

## 🧪 Testing Tools (testing/)

| Script | Purpose | Usage |
|--------|---------|-------|
| `push_swap_tester` | Test push_swap project | `./push_swap_tester [hardmode]` |
| `gnl_eval` | Test get_next_line | `./gnl_eval` |
| `runner` | Interactive Valgrind wrapper | Interactive |
| `run_shell` | Minishell Valgrind runner | `./run_shell` |

## ✅ Code Quality Tools (code-quality/)

| Script | Purpose | Usage |
|--------|---------|-------|
| `check_forbidden` | Find forbidden functions | `./check_forbidden` |
| `check_forbidden_libft.sh` | Libft function checker | `./check_forbidden_libft.sh` |
| `norm_dir` | Format code to 42 norm | Interactive |
| `todo_finder` | Find TODO/FIXME comments | `./todo_finder` |

## 🧹 System Utilities (system/)

| Script | Purpose | Usage |
|--------|---------|-------|
| `clean` | Clean Flatpak cache | `./clean` |
| `cleaner` | Enhanced cleanup tool | `./cleaner /path/to/dir` |

## ⚙️ Setup Tools (setup/)

| Script | Purpose | Usage |
|--------|---------|-------|
| `install_visualizer.sh` | Install push_swap visualizer | `./install_visualizer.sh` |

---

## 📊 Quick Statistics

- **Total Scripts**: 13
- **Categories**: 5
- **Interactive Scripts**: 4
- **Automated Scripts**: 9

## 🔍 Finding the Right Script

### "I want to..."

- **...commit and push quickly** → `git/push`
- **...test my push_swap** → `testing/push_swap_tester`
- **...check for forbidden functions** → `code-quality/check_forbidden`
- **...clean up disk space** → `system/cleaner`
- **...check for memory leaks** → `testing/runner` or `testing/run_shell`
- **...format my code** → `code-quality/norm_dir`
- **...find all my TODOs** → `code-quality/todo_finder`
- **...test get_next_line** → `testing/gnl_eval`
- **...use Git interactively** → `git/git_helper`

## 📝 Notes

- **Interactive scripts** will prompt you for input
- **Automated scripts** run with minimal or no user interaction
- Most scripts assume you're in your project directory
- Add all directories to PATH for global access (use `./setup.sh`)

---

For detailed documentation on each script, see the README.md in each category folder.
