#!/bin/bash

# This script demonstrates a race condition bug.

# Create two files
touch file1.txt
touch file2.txt

# Start two processes simultaneously, each writing to a different file
(echo "Process 1 writing to file1" > file1.txt) &
(echo "Process 2 writing to file2" > file2.txt) &

# Wait for both processes to finish
wait

# Print the content of both files
cat file1.txt
cat file2.txt

# The output might show that only one process's output has been written, due to a race condition.