#!/bin/bash
# rm -rf public/

# git submodule add -f https://github.com/winterwang/winterwang.github.io.git public

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

# Build the project.
hugo -t academic # if using a theme, replace by `hugo -t <yourtheme>`

# Go To Public folder
cd public

# git pull

# Add changes to git.
sudo git add --all --force

# Commit changes.
msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

# Push source and build repos.
git push origin master

# Come Back
cd ..
