#NAME: JUDD MARC ODOYO
#REG NO: SCT211-0744/2021
#!/bin/bash

# Prompt user for directory path
read -p "Enter the path: " directory

# Check if the directory exists if so stores their paths in an array
if [ -d "$directory" ]; then
    empty_folders=($(find "$directory" -type d -empty))

    # The conditional statement checks if there are empty folders in the directory
    if [ ${#empty_folders[@]} -eq 0 ]; then
        echo "No empty folders found in $directory"
    else
        echo "Empty folders in $directory:"
        for folder in "${empty_folders[@]}"; do
            # We use the 'stat' command to get the creation time of the folder and print with the folder name
            creation_time=$(stat -c "%y" "$folder")
            echo "Folder: $folder, Created on: $creation_time"
        done
    fi
else
    echo "Directory not found: $directory"
fi
