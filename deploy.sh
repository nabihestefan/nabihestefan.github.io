#!/bin/sh

# If a command fails then the deploy stops
set -e

printf "\033[0;32mDeploying updates to GitHub...\033[0m\n"
# check message
msg="rebuilding site $(date)"
if [ -n "$*" ]; then
	msg="$*"
fi

#commit to Portfolio repo
git add -A
git commit -m "$msg"
git push origin main

printf "\033[0;32mPushed to Website\033[0m\n"
