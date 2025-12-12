#!/bin/bash

#  defining the report header
HEADER_FOOTER="====================================="
REPORT_TITLE="SYSTEM INFORMATION REPORT"

#  dynamic information
CURRENT_USER=$(whoami)

CURRENT_DATE=$(date +"%a %b %d %Y")

CURRENT_TIME=$(date +"%H:%M:%S")
HOME_DIR=$HOME
CURRENT_PWD=$(pwd)

#  using 'ls -A' lists all files except '.' and '..'  
#  'wc -l' counts the lines
FILE_COUNT=$(ls -A | wc -l)

#  print report
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
