#!/bin/bash

set -e
set -x

# Check if the first argument is provided
if [ -z "$1" ]; then
  echo "Usage: $0 origin:branch"
  exit 1
fi

# Split the argument by ':'
IFS=":" read -r origin branch <<< "$1"

# Check if both origin and branch are set
if [ -z "$origin" ] || [ -z "$branch" ]; then
  echo "Error: The input must be in the format origin:branch"
  exit 1
fi

git checkout main
git pull real-origin main
if [ `git branch --list $branch` ]
then
  git branch -D $branch
fi
git branch $branch
git checkout $branch
git pull $origin $branch

