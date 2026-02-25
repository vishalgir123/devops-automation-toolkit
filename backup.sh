#!/bin/bash

# Step 1: Create project folder
mkdir project

# Step 2: Create files
touch project/file1.txt
touch project/file2.txt
touch project/file3.txt

# Step 3: Create backup folder
mkdir backup

# Step 4: Store date
DATE=$(date +%Y-%m-%d)

# Step 5: Backup file name
SHOW="backup_$DATE.tar.gz"

# Step 6: Compress project folder
tar -czvf backup/$SHOW project

# Step 7: Print message
echo "Backup created: $SHOW"
