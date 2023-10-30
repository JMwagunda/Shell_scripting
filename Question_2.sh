#NAME: JUDD MARC ODOYO
#REG NO: SCT211-0744/2021

#!bin/bash
# Count the number of characters (excluding white spaces) in the file JUJAYETU.txt
char_count=$(cat 'JUJAYETU.txt' | tr -d [:space:]| wc -m)
echo "Number of characters (excluding white spaces) is: $char_count"

