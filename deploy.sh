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
git push upstream main

printf "Pushed to Portfolio"

# Build the project.
hugo -t hugo-resume # if using a theme, replace with `hugo -t <YOURTHEME>`

# Go To Public folder
cd public

# Add name file for when i get my domain
# echo "www.nabihestefan.co" > CNAME
# commit to site repo
git add .
git commit -m "$msg"
git push origin

printf "Pushed to Public"

cd ..
