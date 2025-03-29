#!/bin/bash

OUT="/tmp/exit_soul_protocol_status.txt"
echo > "$OUT"

# README content
echo "README.md" >> "$OUT"
echo "--------------------------------------------------" >> "$OUT"
cat README.md >> "$OUT"
echo -e "\n\n" >> "$OUT"

# Soul Peace Agreement files
echo "SoulPeace Agreements" >> "$OUT"
echo "--------------------------------------------------" >> "$OUT"

# English version
if [ -f "soulpeace/soulpeace_en.tex" ]; then
  echo "soulpeace/soulpeace_en.tex" >> "$OUT"
  echo "--------------------------------------------------" >> "$OUT"
  cat soulpeace/soulpeace_en.tex >> "$OUT"
  echo -e "\n\n" >> "$OUT"
fi

# Finnish version
if [ -f "soulpeace/soulpeace_fi.tex" ]; then
  echo "soulpeace/soulpeace_fi.tex" >> "$OUT"
  echo "--------------------------------------------------" >> "$OUT"
  cat soulpeace/soulpeace_fi.tex >> "$OUT"
  echo -e "\n\n" >> "$OUT"
fi

# Reddit launch post
if [ -f "reddit/launch_post.txt" ]; then
  echo "reddit/launch_post.txt" >> "$OUT"
  echo "--------------------------------------------------" >> "$OUT"
  cat reddit/launch_post.txt >> "$OUT"
  echo -e "\n\n" >> "$OUT"
fi

# Burnout stories
if [ -f "stories/burnout_logs.md" ]; then
  echo "stories/burnout_logs.md" >> "$OUT"
  echo "--------------------------------------------------" >> "$OUT"
  cat stories/burnout_logs.md >> "$OUT"
  echo -e "\n\n" >> "$OUT"
fi

# Donation information
if [ -f "donate.md" ]; then
  echo "donate.md" >> "$OUT"
  echo "--------------------------------------------------" >> "$OUT"
  cat donate.md >> "$OUT"
  echo -e "\n\n" >> "$OUT"
fi

# PDF files if any exist
if [ -d "pdf" ]; then
  echo "Available PDF files:" >> "$OUT"
  echo "--------------------------------------------------" >> "$OUT"
  ls -la pdf/ >> "$OUT"
  echo -e "\n\n" >> "$OUT"
fi

# Try to copy to clipboard based on platform
if command -v xclip &> /dev/null; then
  xclip -selection clipboard < "$OUT"
  echo "📋 Exit Soul Protocol status copied to clipboard and saved to: $OUT"
elif command -v pbcopy &> /dev/null; then
  pbcopy < "$OUT"
  echo "📋 Exit Soul Protocol status copied to clipboard and saved to: $OUT"
else
  echo "📋 Exit Soul Protocol status saved to: $OUT"
  echo "(Clipboard utility not found - install xclip or pbcopy to enable clipboard support)"
fi
