#!/bin/bash

# Create a directory called "output"
mkdir output

# Move/copy text file into the "output" directory
cp data.txt output/

# cd into output
cd output

# Read the contents of the text file into a new file called "read.txt"
cat data.txt > read.txt

# Run pwd command and save the output to "pwd.txt"
pwd > pwd.txt

# Run ls command and save the output to "ls.txt"
ls > ls.txt

# Make a copy of the text file into "copy.txt"
cp data.txt copy.txt

# Create an alias to print today's date

alias today='date "+%Y-%m-%d"'

# Invoke the alias and save the output to "date.txt"
today > date.txt 2>&1


# Count the words in the text file and save to "textcount.txt"
wc -w data.txt > textcount.txt

# Save first five lines of ps command as "process.txt"
ps | head -n 5 > process.txt

# Save first five lines of ifconfig command as "netstat.txt"
ifconfig | head -n 5 > netstat.txt

# Save first five lines of mount command as "mount.txt"
mount | head -n 5 > mount.txt

# Make a file called "permissions.txt" and give it rwx to all groups
touch permissions.txt
chmod a+rwx permissions.txt

# Create a shell variable called TESTENV1 and set it to "test"
TESTENV1="test"

# Run grep command for all words in the text file with at least 3 letters, save to "regex.txt"
grep -E '\b\w{3,}\b' data.txt > regex.txt

# Navigate up a level to the "extra-credit" directory
cd ..

# Commit the contents of the "extra-credit" directory
git add .
git commit -m "Add output directory and perform specified tasks"
git push origin main

