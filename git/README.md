# Git Tools

Scripts for simplifying Git operations and version control workflows.

## Scripts

### `push`
Quick Git commit and push wrapper.

**Usage:**
```bash
./push
```
- Prompts for a commit message
- Stages all changes (`git add .`)
- Commits with your message
- Pushes to remote

---

### `git_helper`
Interactive menu-driven Git helper.

**Usage:**
```bash
./git_helper
```

**Features:**
- Status check
- Add all changes
- Commit with message
- Push changes
- Pull updates
- View branches

---

### `copy_push`
Copy a project directory and push it to a Git repository.

**Usage:**
```bash
./copy_push <source_dir> <repo_dir>
```

**Example:**
```bash
./copy_push projects my_repo
```

**What it does:**
- Lists projects in the source directory
- Lets you select which project to copy
- Copies to the repository directory
- Removes `.git` folder from copied project
- Optionally pushes changes
