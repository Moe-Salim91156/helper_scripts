# System Utilities

Scripts for cleaning up disk space and managing system resources.

## Scripts

### `clean`
Cleans cache folders from Flatpak applications.

**Usage:**
```bash
./clean
```

**Target directory:**
- `/home/msalim/.var/app`

**What it cleans:**
- `cache` folders
- `.cache` folders

**Note:** This script has hardcoded paths. You may need to edit `BASE_DIR` to match your system.

---

### `cleaner`
Enhanced cleaning script with icons and custom directory support.

**Usage:**
```bash
./cleaner /path/to/directory
```

**Example:**
```bash
./cleaner ~/projects
```

**What it cleans:**
1. User's `~/.cache` folder
2. `cache` folders in subdirectories
3. `.cache` folders in subdirectories  
4. Old `.zcompdump*` files (keeps newest)

**Features:**
- Emoji/icon output for better readability
- Takes directory argument
- Validates directory exists
- Keeps the newest `.zcompdump` file for Zsh completion cache

**Output symbols:**
- 📁 Directory being cleaned
- 🗑️ Removing cache
- ℹ️ Information messages
- 🧹 Cleaning operation
- ✅ Done
