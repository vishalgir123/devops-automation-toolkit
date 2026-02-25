#!/bin/bash

# Folder and log file
FOLDER="myfolder"
LOG="logs.txt"

# Check if folder exists
if [ -d "$FOLDER" ]
then
    echo "Folder already exists" >> "$LOG"
else
    mkdir "$FOLDER"
    echo "Folder created" >> "$LOG"
fi

# Create files inside folder
for f in file1.txt file2.txt
do
    touch "$FOLDER/$f"
    echo "File created: $f" >> "$LOG"
done

# Set permissions
chmod 755 "$FOLDER"
chmod 644 "$FOLDER"/*

# Final message
echo "Setup completed"
