#!/bin/bash

# Color definitions
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
WHITE='\033[1;37m'
BOLD='\033[1m'
NC='\033[0m' # No Color

# Fancy banner
echo -e "${CYAN}╔════════════════════════════════════════════════════════════╗${NC}"
echo -e "${CYAN}║${WHITE}          PUSH SWAP VISUALIZER - SETUP SCRIPT           ${CYAN}║${NC}"
echo -e "${CYAN}╚════════════════════════════════════════════════════════════╝${NC}"
echo ""

# Function to print section headers
print_section() {
    echo -e "\n${MAGENTA}▓▓▓ $1 ${NC}"
    echo -e "${BLUE}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}\n"
}

# Function to print step
print_step() {
    echo -e "${YELLOW}➤${NC} ${WHITE}$1${NC}"
}

# Function to print success
print_success() {
    echo -e "${GREEN}✓${NC} $1"
}

# Function to print error
print_error() {
    echo -e "${RED}✗${NC} $1"
}

# Navigate to home directory
print_section "NAVIGATING TO HOME DIRECTORY"
print_step "Changing to home directory..."
cd ~
print_success "Successfully navigated to $(pwd)"

# Clone repository
print_section "CLONING REPOSITORY"
print_step "Cloning push_swap_visualizer from GitHub..."
git clone https://github.com/o-reo/push_swap_visualizer.git
print_success "Repository cloned successfully!"

# Update package lists
print_section "UPDATING SYSTEM PACKAGES"
print_step "Running apt-get update..."
sudo apt-get update
print_success "Package lists updated!"

# Install dependencies
print_section "INSTALLING DEPENDENCIES"

print_step "Installing CMake..."
sudo apt-get install -y cmake
print_success "CMake installed!"

print_step "Installing g++..."
sudo apt-get install -y g++
print_success "g++ installed!"

print_step "Installing Clang..."
sudo apt-get install -y clang
print_success "Clang installed!"

print_step "Installing Mesa OpenGL libraries..."
sudo apt-get install -y libgl1-mesa-dev libglu1-mesa-dev
print_success "Mesa libraries installed!"

print_step "Installing X11 libraries..."
sudo apt-get install -y libx11-dev libxrandr-dev
print_success "X11 libraries installed!"

print_step "Installing udev development files..."
sudo apt-get install -y libudev-dev
print_success "udev libraries installed!"

print_step "Installing FreeType libraries..."
sudo apt-get install -y libfreetype-dev
print_success "FreeType installed!"

# Build the project
print_section "BUILDING PROJECT"
print_step "Navigating to project directory..."
cd push_swap_visualizer
print_success "In directory: $(pwd)"

print_step "Creating build directory..."
mkdir build
print_success "Build directory created!"

print_step "Entering build directory..."
cd build
print_success "In directory: $(pwd)"

print_step "Running CMake configuration..."
cmake ..
print_success "CMake configuration complete!"

print_step "Compiling project with make..."
make
print_success "Build complete!"

# Final message
echo ""
echo -e "${CYAN}╔════════════════════════════════════════════════════════════╗${NC}"
echo -e "${CYAN}║${GREEN}${BOLD}                   SETUP COMPLETED! 🎉                     ${NC}${CYAN}║${NC}"
echo -e "${CYAN}╚════════════════════════════════════════════════════════════╝${NC}"
echo ""
echo -e "${WHITE}The push_swap visualizer has been successfully installed!${NC}"
echo -e "${YELLOW}Location:${NC} ~/push_swap_visualizer/build/"
echo ""
