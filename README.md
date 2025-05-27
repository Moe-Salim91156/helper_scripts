# 🧰 42 Helper Scripts

A collection of useful Bash scripts to make your life easier as a 42 student. These scripts automate common tasks like cleaning up disk space, pushing to Git, testing projects, and running scripts — saving you precious time during your cursus.

---

## 📂 What's Inside

| Script Name         | Description                                                                 |
|---------------------|-----------------------------------------------------------------------------|
| `clean`             | Deletes system clutter: `.cache`, `.zcompdump*`, Flatpak leftovers, and more to save disk space. |
| `cleaner`           | Same as `clean` but takes **$1 arg as the DIR** and with some icons. |
| `copy_push`         | Copies files and automatically pushes changes to a Git repository. Great for quick backups. |
| `norm_dir`          | Normalizes directory structure. Helps keep your project directories clean and readable. |
| `push`              | A simple Git push wrapper for lazy commits.                                |
| `push_swap_tester`  | Runs test cases for your `push_swap` project. Supports multiple input sizes. |
| `run_shell`         | Executes a shell script with an optional argument.                         |
| `runner`            | A flexible script runner that works with various project files.             |

---

## 🚀 Installation & Setup

1. **Clone the Repo**

```bash
git clone https://github.com/Moe-Salim91156/helper_scripts.git ~/helper_scripts
```

2. **Add to Your `$PATH`**

To run these scripts from anywhere:

```bash
echo 'export PATH="$HOME/helper_scripts:$PATH"' >> ~/.zshrc
source ~/.zshrc
```

_For Bash:_

```bash
echo 'export PATH="$HOME/helper_scripts:$PATH"' >> ~/.bashrc
source ~/.bashrc
```

Now you can use any script globally like:

```bash
clean
push
cleaner ~/my_project
```

---

## 🎓 Why These Scripts Help

At 42, time and disk space are both valuable. These scripts help by:
- Quickly cleaning up unnecessary files.
- Running frequent Git operations faster.
- Testing projects like `push_swap` easily.
- Managing and executing shell scripts without hassle.

---

## 🤝 Contributions & Feedbacks 

Feel free to submit pull requests or ideas to improve the scripts!

---

## 🧪 Tested On

- Zsh and Bash shells
- Debian, Ubuntu, and WSL2
- 42's Linux setups

---

## 💡 Tip for 42 Students

Use these scripts as a base and modify them to fit your project workflow. Shell scripting is a powerful tool at 42 — and this repo is a great start!

