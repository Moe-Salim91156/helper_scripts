# 🧰 42 Helper Scripts

A collection of useful Bash scripts to make your life easier as a 42 student. These scripts automate common tasks like cleaning up disk space, pushing to Git, testing projects, and running scripts — saving you precious time during your cursus.

**Now organized into logical categories for easier navigation!**

---

## 📂 Repository Structure

```
helper_scripts/
├── git/              # Git and version control tools
├── testing/          # Project testing and evaluation scripts
├── code-quality/     # Code checking and formatting tools
├── system/           # System cleanup and maintenance utilities
└── setup/            # Installation and setup scripts
```

---

## 📚 Categories

### 🔄 [Git Tools](git/)
Scripts for Git operations and version control.
- `push` - Quick commit and push wrapper
- `git_helper` - Interactive Git menu
- `copy_push` - Copy projects and push to Git

### 🧪 [Testing Tools](testing/)
Scripts for testing and evaluating 42 projects.
- `push_swap_tester` - Comprehensive push_swap testing
- `gnl_eval` - Get Next Line tester
- `runner` - Interactive Valgrind wrapper
- `run_shell` - Minishell Valgrind runner

### ✅ [Code Quality Tools](code-quality/)
Scripts for maintaining code standards.
- `check_forbidden` - Find forbidden functions
- `check_forbidden_libft.sh` - Libft-specific checker
- `norm_dir` - Auto-format code to 42 norm
- `todo_finder` - Find TODO/FIXME comments

### 🧹 [System Utilities](system/)
Scripts for system maintenance and cleanup.
- `clean` - Clean Flatpak cache
- `cleaner` - Enhanced cleanup with icons

### ⚙️ [Setup Tools](setup/)
Scripts for installing development tools.
- `install_visualizer.sh` - Install push_swap visualizer

> **💡 Tip:** Each category has its own README with detailed documentation!

---

## 🚀 Installation & Setup

### Method 1: Add Subdirectories to PATH (Recommended)

1. **Clone the Repo**

```bash
git clone https://github.com/Moe-Salim91156/helper_scripts.git ~/helper_scripts
```

2. **Add All Script Directories to Your `$PATH`**

For Zsh:
```bash
cat >> ~/.zshrc << 'EOF'
# 42 Helper Scripts
export PATH="$HOME/helper_scripts/git:$PATH"
export PATH="$HOME/helper_scripts/testing:$PATH"
export PATH="$HOME/helper_scripts/code-quality:$PATH"
export PATH="$HOME/helper_scripts/system:$PATH"
export PATH="$HOME/helper_scripts/setup:$PATH"
EOF
source ~/.zshrc
```

For Bash:
```bash
cat >> ~/.bashrc << 'EOF'
# 42 Helper Scripts
export PATH="$HOME/helper_scripts/git:$PATH"
export PATH="$HOME/helper_scripts/testing:$PATH"
export PATH="$HOME/helper_scripts/code-quality:$PATH"
export PATH="$HOME/helper_scripts/system:$PATH"
export PATH="$HOME/helper_scripts/setup:$PATH"
EOF
source ~/.bashrc
```

### Method 2: Navigate to Script Directories

Alternatively, navigate to the specific category folder and run scripts directly:

```bash
cd ~/helper_scripts/git
./push

cd ~/helper_scripts/testing
./push_swap_tester
```

### Method 3: Create Aliases

Add shortcuts for your favorite scripts:

```bash
# In ~/.zshrc or ~/.bashrc
alias quick-push='~/helper_scripts/git/push'
alias test-ps='~/helper_scripts/testing/push_swap_tester'
alias cleanup='~/helper_scripts/system/cleaner'
```

---

## 🎓 Why These Scripts Help

At 42, time and disk space are both valuable. These scripts help by:
- **Organized Structure**: Scripts are categorized by purpose for easy discovery
- **Quick Git Operations**: Faster commits and pushes with simple wrappers
- **Automated Testing**: Test projects like push_swap and get_next_line easily
- **Code Quality**: Check for forbidden functions and maintain norm compliance
- **Disk Management**: Clean up cache and temporary files to save precious space
- **Memory Debugging**: Run Valgrind with proper flags for leak detection

---

## 📖 Usage Examples

```bash
# Quick git commit and push
push

# Test your push_swap with hardmode
push_swap_tester hardmode

# Clean up disk space in a directory
cleaner ~/Documents

# Check for forbidden functions in current directory
check_forbidden

# Format code to 42 norm
norm_dir

# Find all TODOs in your code
todo_finder

# Run Valgrind on your executable
runner
```

---

## 🤝 Contributions & Feedbacks 

Feel free to submit pull requests or ideas to improve the scripts!
DM me on slack for any feedbacks or comments intra: `msalim`

---

## 🧪 Tested On

- Zsh and Bash shells
- Debian, Ubuntu, and WSL2
- 42's Linux setups

---

## 💡 Tip for 42 Students

Use these scripts as a base and modify them to fit your project workflow. Shell scripting is a powerful tool at 42 — and this repo is a great start!

