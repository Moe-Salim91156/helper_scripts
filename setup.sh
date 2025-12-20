#!/bin/bash

# Colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color
BOLD='\033[1m'

echo -e "${BLUE}╔════════════════════════════════════════════════════════════╗${NC}"
echo -e "${BLUE}║${BOLD}         42 Helper Scripts - Setup Utility              ${NC}${BLUE}║${NC}"
echo -e "${BLUE}╚════════════════════════════════════════════════════════════╝${NC}"
echo ""

# Detect the shell
SHELL_NAME=$(basename "$SHELL")
if [[ "$SHELL_NAME" == "zsh" ]]; then
    RC_FILE="$HOME/.zshrc"
elif [[ "$SHELL_NAME" == "bash" ]]; then
    RC_FILE="$HOME/.bashrc"
else
    echo -e "${YELLOW}Warning: Unknown shell detected. Defaulting to .bashrc${NC}"
    RC_FILE="$HOME/.bashrc"
fi

echo -e "${BLUE}Detected shell:${NC} $SHELL_NAME"
echo -e "${BLUE}RC file:${NC} $RC_FILE"
echo ""

# Get the absolute path of the helper_scripts directory
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo -e "${GREEN}This script will add the following directories to your PATH:${NC}"
echo -e "  ${YELLOW}•${NC} $SCRIPT_DIR/git"
echo -e "  ${YELLOW}•${NC} $SCRIPT_DIR/testing"
echo -e "  ${YELLOW}•${NC} $SCRIPT_DIR/code-quality"
echo -e "  ${YELLOW}•${NC} $SCRIPT_DIR/system"
echo -e "  ${YELLOW}•${NC} $SCRIPT_DIR/setup"
echo ""

# Check if already in PATH
if grep -q "helper_scripts" "$RC_FILE" 2>/dev/null; then
    echo -e "${YELLOW}⚠ Warning: It looks like helper_scripts paths may already be in your $RC_FILE${NC}"
    echo -e "${YELLOW}Do you want to continue anyway? This might create duplicates.${NC}"
    read -p "Continue? (y/n): " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        echo -e "${RED}Setup cancelled.${NC}"
        exit 0
    fi
fi

read -p "$(echo -e ${GREEN}Add these paths to your PATH in $RC_FILE? [y/N]:${NC} )" -n 1 -r
echo
if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo -e "${RED}Setup cancelled.${NC}"
    exit 0
fi

# Add to RC file
echo "" >> "$RC_FILE"
echo "# 42 Helper Scripts" >> "$RC_FILE"
echo "export PATH=\"$SCRIPT_DIR/git:\$PATH\"" >> "$RC_FILE"
echo "export PATH=\"$SCRIPT_DIR/testing:\$PATH\"" >> "$RC_FILE"
echo "export PATH=\"$SCRIPT_DIR/code-quality:\$PATH\"" >> "$RC_FILE"
echo "export PATH=\"$SCRIPT_DIR/system:\$PATH\"" >> "$RC_FILE"
echo "export PATH=\"$SCRIPT_DIR/setup:\$PATH\"" >> "$RC_FILE"

echo -e "${GREEN}✓ Successfully added to $RC_FILE${NC}"
echo ""
echo -e "${YELLOW}To apply the changes, run:${NC}"
echo -e "  ${BOLD}source $RC_FILE${NC}"
echo ""
echo -e "${GREEN}Or simply restart your terminal.${NC}"
echo ""
echo -e "${BLUE}You can now use the scripts from anywhere! Examples:${NC}"
echo -e "  ${YELLOW}push${NC}               - Quick git commit and push"
echo -e "  ${YELLOW}push_swap_tester${NC}   - Test your push_swap"
echo -e "  ${YELLOW}cleaner ~/dir${NC}      - Clean cache in a directory"
echo -e "  ${YELLOW}check_forbidden${NC}    - Find forbidden functions"
echo ""
echo -e "${GREEN}Happy coding! 🚀${NC}"
