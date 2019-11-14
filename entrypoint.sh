#!/bin/sh -l

git diff --name-only --diff-filter=A,M HEAD~1..HEAD /github/workspace
