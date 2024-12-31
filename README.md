# Race Condition in Bash Script

This repository demonstrates a race condition bug in a bash script.  Two processes write to separate files concurrently; however, due to the nature of file I/O, the output might be incomplete or unexpected.

The `bug.sh` file contains the buggy script, and the `bugSolution.sh` file provides a corrected version using proper synchronization mechanisms.