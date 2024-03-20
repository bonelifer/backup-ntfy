# backup-ntfy | [PT](README.md)
This batch script aims to backup files in a specific folder and send a notification via the ntfy.sh API informing whether the backup was completed successfully or not.

The user must define the source and destination folder path using the "source" and "destination" variables. Then the "xcopy" command is used to copy all files and subfolders from the source folder to the destination folder.

After the backup is complete, the script checks the "errorlevel" value. If the value is zero, it means that the backup was completed successfully and a POST request is sent to the ntfy.sh API with the message "Backup completed". Otherwise, a POST request is sent with the message "Backup not completed".

To use this script, you must have "curl" installed on the system and an internet connection. The script can be run on Windows operating systems that support batch scripting. It is important to remember that authentication information for the ntfy.sh API must be configured in advance.
