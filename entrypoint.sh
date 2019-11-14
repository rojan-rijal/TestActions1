#!/bin/sh -l

apt-get install -y git
git diff --name-only --diff-filter=A,M HEAD~1..HEAD /github/workspace
