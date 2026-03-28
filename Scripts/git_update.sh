#!/bin/bash
# git_update.sh — fully automate add, commit, push

# Config
REPO_DIR="$(dirname "$0")/.."   # assumes script is inside Scripts/
COMMIT_MSG="${1:-'Update ATS_12'}"

# Move to repo root
cd "$REPO_DIR" || { echo "Repo directory not found!"; exit 1; }

# Git workflow
echo "Adding changes..."
git add .

echo "Committing..."
git commit -m "$COMMIT_MSG"

echo "Pushing to origin/main..."
git push -u origin main

echo "✅ Git update complete."