
# Un-track old raw configuration leaks from your local Git staging index
git rm --cached -r .rclone.conf .rclone.sh 2>/dev/null || true

# Add your changes and push to GitHub
git add .rclone.sh .github/workflows/deploy.yml
git commit -m "feat: implement secure cloud synchronization using environment variables"
git push origin main
