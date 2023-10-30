#NAME: JUDD MARC ODOYO
#REG NO: SCT211-0744/2021

#!/bin/bash

# Prompt user to enter directory path
read -p "Enter the directory path: " DIRECTORY

# First we check if the directory exists
if [ -d "$DIRECTORY" ]; then
    # Convert .bmp files to .jpeg using imagemagick mogrify tool after installing imagemagick 
    mogrify -format jpeg "$DIRECTORY"/*.bmp
    
    # Count the number of converted images and stores in the COUNT variable
    COUNT=$(find "$DIRECTORY" -type f -name "*.jpeg" | wc -l)
    
    echo "$COUNT .bmp files converted to .jpeg."
else
    echo "Invalid Directory"
fi
