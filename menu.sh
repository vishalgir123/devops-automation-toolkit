#!/bin/bash

# ===== Arguments =====
echo "First argument is: $1"
echo "Second argument is: $2"

# ===== Variables =====
user="vishal"
backup_folder="backup"

# ===== Function 1 =====
setup_environment() {
    echo "Setting up environment..."
    mkdir -p project
    touch project/info.txt
    echo "Setup completed."
}

# ===== Function 2 =====
backup_files() {
    echo "Backing up files using for loop..."

    mkdir -p $backup_folder

    # for loop
    for file in *.txt
    do
        cp $file $backup_folder/
    done

    echo "Backup completed."
}

# ===== Function 3 =====
monitor_system() {
    echo "System Info:"
    echo "User: $user"
    date
}

# ===== While Menu Loop =====
while true
do
    echo "-------------------------"
    echo " MENU PROGRAM "
    echo "-------------------------"
    echo "1 Setup Environment"
    echo "2 Backup Files"
    echo "3 Monitor System"
    echo "4 Exit"
    echo "Enter your choice:"
    read choice

    # ===== Control Statement (case) =====
    case $choice in
        1) setup_environment ;;
        2) backup_files ;;
        3) monitor_system ;;
        4) echo "Exiting..."; break ;;
        *) echo "Invalid Choice" ;;
    esac
done
