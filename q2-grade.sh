#!/bin/bash

#  prompt for input
read -r -p "Enter a numeric score (0-100): " score

#  validation check if input is a non-negative integer AND if it's within the range 0-100
#  the regex check handles non-numeric, empty, and negative numbers
#  'exit 1' stops the script from further executing
if ! [[ "$score" =~ ^[0-9]+$ ]] || (( score > 100 )); then
    echo "Error: Invalid input. Please enter a numeric score between 0 and 100."
    exit 1    
fi

#  grading logic
if (( score >= 70 )); then
    grade="A"
    message="Excellent! You passed with distinction."
elif (( score >= 60 )); then
    grade="B"
    message="Very Good! You passed with merit."
elif (( score >= 50 )); then
    grade="C"
    message="Good! You passed."
elif (( score >= 40 )); then
    grade="D"
    message="Satisfactory! You passed."
else
#  score 0-39
    grade="F"
    message="Unfortunately, you did not pass."
fi

#  print report
echo "--- Grade Report ---"
echo "Score: $score"
echo "Grade: $grade"
echo "Message: $message"
echo "--------------------"
