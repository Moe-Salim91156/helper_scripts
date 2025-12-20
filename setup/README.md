# Setup & Installation Tools

Scripts for installing and setting up development tools.

## Scripts

### `install_visualizer.sh`
Automated installer for the push_swap visualizer.

**Usage:**
```bash
./install_visualizer.sh
```

**What it does:**
1. Clones [push_swap_visualizer](https://github.com/o-reo/push_swap_visualizer) to home directory
2. Updates system packages
3. Installs all dependencies:
   - CMake
   - g++
   - Clang
   - Mesa OpenGL libraries
   - X11 libraries
   - udev development files
   - FreeType libraries
4. Builds the project

**Requirements:**
- Ubuntu/Debian-based Linux system
- sudo privileges
- Internet connection

**Result:**
Visualizer installed at: `~/push_swap_visualizer/build/`

**Features:**
- Colorful output
- Step-by-step progress indicators
- Error checking at each stage
- Fancy ASCII art banner
