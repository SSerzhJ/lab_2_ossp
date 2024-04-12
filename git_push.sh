#!/bin/bash

if [ "$#" -ne 2]; then
    echo "Usage: $0 <local_directory_path> <remote_repository_url>"
    exit 1
fi

local_directory="$1"
remote_directory="$2"

git init
git remote add origin git@github.com:SSerzhJ/lab_2_ossp.git
git add .
git commit -m "Initial commit"
git push -u origin main
