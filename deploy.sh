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
git push origim main

printf "\033[0;32mPushed to Portfolio\033[0m\n"

# Build the project.
hugo -t hugo-resume # if using a theme, replace with `hugo -t <YOURTHEME>`

# Go To Public folder
cp -r /public/. ../Website/
cd ../Website/
# Add name file for when i get my domain
# echo "www.nabihestefan.co" > CNAME
# commit to site repo
git add .
git commit -m "$msg"
git push origin main

printf "\033[0;32mPushed to Public\033[0m\n"

cd ..
