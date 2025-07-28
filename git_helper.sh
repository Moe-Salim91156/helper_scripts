#!/bin/bash
# git_helper.sh - Interactive git helper for common tasks

while true; do
    echo "Git Helper Menu:"
    echo "1) Status"
    echo "2) Add all"
    echo "3) Commit"
    echo "4) Push"
    echo "5) Pull"
    echo "6) Branches"
    echo "7) Exit"
    read -p "Choose an option [1-7]: " choice

    case $choice in
        1) git status ;;
        2) git add .; echo "Added all changes." ;;
        3) read -p "Commit message: " msg; git commit -m "$msg" ;;
        4) push ;;
        5) git pull ;;
        6) git branch -a ;;
        7) echo "Bye!"; exit 0 ;;
        *) echo "Invalid option." ;;
    esac
    echo
done


