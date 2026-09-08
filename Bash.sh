# 1. Force remove the junk folders/files from your local files
rm -rf "~" .rclone .zfz .zig

# 2. Tell Git to stop tracking them entirely
git rm -rf --cached "~" .rclone .zfz .zig 2>/dev/null || true

# 3. Re-write your .gitignore so these never come back
cat << EOF > .gitignore
.rclone.conf
rclone config
.rclone/
.zfz
.zig/
~
EOF

# 4. Save and push the clean state to GitHub
git add .gitignore
git commit -m "secure: purge remaining runtime junk caches and optimize gitignore rules"
git push origin main
