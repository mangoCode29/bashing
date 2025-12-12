#!/bin/bash

# Define the report header
HEADER_FOOTER="====================================="
REPORT_TITLE="SYSTEM INFORMATION REPORT"

# Get dynamic information
CURRENT_USER=$(whoami)
# Format: Mon Nov 24 2025
CURRENT_DATE=$(date +"%a %b %d %Y")
# Format: 14:30:45
CURRENT_TIME=$(date +"%H:%M:%S")
HOME_DIR=$HOME
CURRENT_PWD=$(pwd)
# Count the number of non-hidden files and directories in the current directory, excluding . and ..
# The example output doesn't specify if hidden files should be included.
# Using 'ls -A' lists all files except '.' and '..'. 'wc -l' counts the lines.
# This is a common and simple way to get a file count in a shell script.
FILE_COUNT=$(ls -A | wc -l)

# Print the report
echo "$HEADER_FOOTER"
echo "$REPORT_TITLE"
echo "$HEADER_FOOTER"
echo "Current User: $CURRENT_USER"
echo "Current Date: $CURRENT_DATE"
echo "Current Time: $CURRENT_TIME"
echo "Home Directory: $HOME_DIR"
echo "Current Working Directory: $CURRENT_PWD"
echo "Number of Files in Current Directory: $FILE_COUNT"
echo "$HEADER_FOOTER"
