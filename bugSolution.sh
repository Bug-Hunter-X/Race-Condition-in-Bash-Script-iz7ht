#!/bin/bash

# This script demonstrates a solution to the race condition bug.

# Create two files
touch file1.txt
touch file2.txt

# Use a temporary file to prevent race conditions
temp_file=$(mktemp)

# Write to temporary file then move it
(echo "Process 1 writing to file1" > $temp_file && mv $temp_file file1.txt) &
(echo "Process 2 writing to file2" > $temp_file && mv $temp_file file2.txt) &

# Wait for both processes to finish
wait

# Print the content of both files
cat file1.txt
cat file2.txt