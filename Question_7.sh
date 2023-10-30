#NAME: JUDD MARC ODOYO
#REG NO: SCT211-0744/2021
#!/bin/bash

# Read names and emails from the text file
while IFS=, read -r NAME EMAIL ADDRESS; 
do
    # Subject and body of the email
    SUBJECT="Invitation to 3rd Year Projects Webinar"
    BODY="To: $EMAIL\n\nDear $NAME,\n\nInviting you as our computing student to our 3rd Year Projects on innovation incubation scheduled on Monday, 23rd October from 10:00 A.M. The Zoom link for joining on Friday is as given below:\n\nhttps://zoom.us/your-zoom-link\n\nWe shall also broadcast the webinar on our YouTube channel:\n\nhttps://youtu.be/ONVTA7LKMIs\n\nBest regards,\nDepartment of Computing"

    # Send email using 'mail' command
    echo -e "$BODY" | mail -s "$SUBJECT" "$EMAIL"
done < 3rd_Year_Students.txt





