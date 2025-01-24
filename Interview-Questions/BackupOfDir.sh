#!/bin/bash


#Basic template code

SOURCE_DIR ="/path"
BACKUP_DIR ="/path/"

#timestamp
TIMESTAMP = $(date + "%Y%m%d%H%M%S")

#Creating backup file name with timestamp

BACKUP_FILE = "$BACKUP_DIR/backup_$TIMESTAMP.tar.gz"

#Create the backup
echo "Creating backup of $SOURCE_DIR at $BACKUP_FILE"
tar -czf $BACKUP_FILE $SOURCE_DIR


#Verify the backup file
if [$? -eq 0]; then
	echo "Backup Created Succesfully."
else 
	echo "Backup failed."
fi


