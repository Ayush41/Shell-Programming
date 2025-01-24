#!/bin/bash


#Basic template code

SOURCE_DIR ="/path"
BACKUP_DIR ="/path/"

#timestamp
TIMESTAMP = $(date + "%Y%m%d%H%M%S")

#Creating backup file name with timestamp

BACKUP_FILE = "$BACKUP_DIR/backup_$TIMESTAMP.tar.gz"

#Create the backup

#Verify the backup file


