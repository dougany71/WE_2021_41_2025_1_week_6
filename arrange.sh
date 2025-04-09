#!/bin/bash

FILES="./files"

# Loop through each item inside files folder
for file in "$FILES"/*; do
    filename=$(basename "$file")
    first_letter=$(echo "${filename:0:1}" | tr 'A-Z' 'a-z')
    
    # Move the file to the corresponding folder based on the first letter
    mv "$file" "./$first_letter/"
done

