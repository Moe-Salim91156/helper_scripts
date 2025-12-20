# Contributing to 42 Helper Scripts

Thank you for considering contributing to this project! This guide will help you add new scripts and maintain the organized structure.

## 📁 Repository Structure

All scripts are organized into categories:

```
helper_scripts/
├── git/              # Git and version control tools
├── testing/          # Project testing and evaluation scripts
├── code-quality/     # Code checking and formatting tools
├── system/           # System cleanup and maintenance utilities
└── setup/            # Installation and setup scripts
```

## 🆕 Adding a New Script

### 1. Choose the Right Category

First, determine which category your script belongs to:

- **git/** - Scripts that interact with Git, manage repositories, or handle version control
- **testing/** - Scripts that test, evaluate, or debug 42 projects
- **code-quality/** - Scripts that check code standards, find issues, or format code
- **system/** - Scripts for system maintenance, cleanup, or resource management
- **setup/** - Scripts that install tools or set up environments

### 2. Create Your Script

1. Create your script in the appropriate directory:
   ```bash
   cd ~/helper_scripts/<category>
   touch my_new_script
   chmod +x my_new_script
   ```

2. Add a shebang at the top:
   ```bash
   #!/bin/bash
   ```

3. Add a brief comment explaining what the script does:
   ```bash
   #!/bin/bash
   # my_new_script - Brief description of what this script does
   ```

### 3. Follow Best Practices

- **Use meaningful variable names**: Prefer `project_dir` over `pd`
- **Add comments for complex logic**: Help others understand your code
- **Include error checking**: Check if files exist, directories are valid, etc.
- **Use colors for output** (optional): Makes the output more readable
  ```bash
  GREEN='\033[0;32m'
  RED='\033[0;31m'
  NC='\033[0m' # No Color
  echo -e "${GREEN}Success!${NC}"
  ```
- **Make it portable**: Avoid hardcoded paths when possible
- **Test your script**: Make sure it works in different scenarios

### 4. Document Your Script

Add documentation to the category's README.md:

```markdown
### `my_new_script`
Brief description of the script.

**Usage:**
\`\`\`bash
./my_new_script [arguments]
\`\`\`

**Features:**
- Feature 1
- Feature 2

**Requirements:**
- Any dependencies or files needed
```

### 5. Update the Main README

Add your script to the appropriate section in the main README.md:

```markdown
### 🔄 [Category Name](category/)
Scripts for category purpose.
- `existing_script` - Description
- `my_new_script` - Your script description  # ADD THIS LINE
```

## 🐛 Reporting Issues

If you find a bug or have a suggestion:

1. Check if the issue already exists
2. Create a new issue with:
   - Clear description
   - Steps to reproduce (for bugs)
   - Expected vs actual behavior
   - Your environment (OS, shell, etc.)

## 💡 Script Ideas

Some ideas for new scripts:

- **Git Category:**
  - Branch cleanup script
  - Merge conflict helper
  - Git statistics viewer

- **Testing Category:**
  - libft tester
  - ft_printf checker
  - Memory leak analyzer

- **Code Quality:**
  - Line counter
  - Complexity analyzer
  - Header generator

- **System:**
  - Workspace organizer
  - Log file cleaner
  - Disk usage reporter

## ✅ Pull Request Checklist

Before submitting a pull request:

- [ ] Script is executable (`chmod +x`)
- [ ] Shebang is present (`#!/bin/bash`)
- [ ] Script is in the correct category folder
- [ ] Category README.md is updated
- [ ] Main README.md is updated
- [ ] Script has been tested
- [ ] Code follows existing style conventions
- [ ] No hardcoded personal paths (unless unavoidable)

## 📞 Contact

For questions or feedback, reach out to:
- **Intra**: msalim
- **GitHub**: Create an issue or pull request

## 🤝 Code of Conduct

- Be respectful and constructive
- Help others learn and improve
- Give credit where it's due
- Keep scripts educational and useful for 42 students

---

Thank you for contributing! 🎉
