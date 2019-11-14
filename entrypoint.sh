#!/bin/sh -l

echo "Hello $1"
time=$(date)
echo ::set-output name=time::$time
git diff --name-only --diff-filter=A,M HEAD~1..HEAD /github/workspace
