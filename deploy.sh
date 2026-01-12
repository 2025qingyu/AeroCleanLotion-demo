#!/bin/bash

# Build the project
npm run build

# Create a temporary directory
mkdir -p temp-deploy

# Copy the dist files to the temporary directory
cp -r dist/* temp-deploy/

# Navigate to the temporary directory
cd temp-deploy

# Initialize git
git init

# Add all files
git add .

# Commit the files
git commit -m "Deploy to GitHub Pages"

# Push to the gh-pages branch
git push -f https://github.com/2025qingyu/AeroCleanLotion-demo.git master:gh-pages

# Navigate back
cd ..

# Clean up
rm -rf temp-deploy
