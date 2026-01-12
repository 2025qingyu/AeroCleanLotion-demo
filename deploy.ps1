# Build the project
npm run build

# Create a temporary directory
New-Item -ItemType Directory -Path temp-deploy -Force

# Copy the dist files to the temporary directory
Copy-Item -Path dist\* -Destination temp-deploy\ -Recurse -Force

# Navigate to the temporary directory
Set-Location -Path temp-deploy

# Initialize git
git init

# Add all files
git add .

# Commit the files
git commit -m "Deploy to GitHub Pages"

# Push to the gh-pages branch
git push -f https://github.com/2025qingyu/AeroCleanLotion-demo.git master:gh-pages

# Navigate back
Set-Location -Path ..

# Clean up
Remove-Item -Path temp-deploy -Recurse -Force
