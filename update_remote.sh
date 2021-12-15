#!/bin/bash

if ! command -v git &> /dev/null; then
    echo "This script needs 'git' to run. Consider installing it."
    exit 1
fi

git pull
git add --all custom_records
git commit --message "Update boostagrams"
git push --force-with-lease
