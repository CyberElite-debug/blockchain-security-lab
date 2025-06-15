#!/bin/bash

# Change these variables
GITHUB_REPO_URL="git@github.com:CyberElite-debug/blockchain-security-lab.git"
BRANCH="main"

# Initialize git if needed
if [ ! -d ".git" ]; then
  git init
  echo "Git repo initialized"
fi

# Add all files
git add .

# Commit changes
git commit -m "Initial commit: Add slither audit project"

# Add remote if not set
if ! git remote | grep -q origin; then
  git remote add origin $GITHUB_REPO_URL
  echo "Remote origin added: $GITHUB_REPO_URL"
fi

# Push to GitHub
git push -u origin $BRANCH

echo "Push to GitHub complete."
