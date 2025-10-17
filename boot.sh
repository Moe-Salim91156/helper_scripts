#!/bin/bash

# =========================
# Bootstrap WSL for Session
# =========================
# Run as a normal user in WSL
# Usage: ./bootstrap_wsl.sh
# =========================

echo "=== Updating system ==="
sudo apt update -y
sudo apt upgrade -y

echo "=== Installing essential build tools ==="
sudo apt install -y build-essential git curl wget unzip tar

echo "=== Installing shells & editors ==="
sudo apt install -y vim zsh

echo "=== Installing Python & utilities ==="
sudo apt install -y python3 python3-pip python3-venv python3-dev

# echo "=== Installing DevOps & scripting tools ==="
# sudo apt install -y docker.io docker-compose ansible make

echo "=== Installing file utilities ==="
sudo apt install -y tree zip unzip file

echo "=== Installing CLI productivity tools ==="
sudo apt install -y fzf bat jq

echo "=== Cleaning up ==="
sudo apt autoremove -y
sudo apt clean

echo "=== Bootstrap complete! ==="
echo "You may want to restart your terminal or WSL instance."

