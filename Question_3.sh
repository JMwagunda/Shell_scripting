#NAME: JUDD MARC ODOYO
#REG NO: SCT211-0744/2021

#!/bin/bash
# Prompt the user to enter a person's UID
read -p "Enter user ID: " uid
echo "$uid"
# Use the `who` command to display UID of the current user
# `grep` to find active login sessions for the specified UID
count=$(who -u | grep "$uid" | wc -l)

echo "User with UID $uid is logged in $count times."
 

