#!/bin/bash 

set -e 

cd ../people # change directory to people. the single . implies that you're already in the place to go to this directory. 

target_file="README.md" # this will make your code look for all of your READMEs in this folder. 
# loop through ALL the directories and find the target file. 
for dir in $( find . -type d ); do #it's a find command for all directories.
  if [ -f "$dir/$target_file" ]; then  # if there is a directory with a target file in it...
    #  echo "$dir/$target_file"; 
    name=`head -n 1 "$dir/$target_file"`; 
    echo $name;
  fi # this is how you end the loop in bash. 
done # means you sto p the command altogether. 
# your language is for, do and if, then. 
