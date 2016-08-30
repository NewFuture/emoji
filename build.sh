#!/usr/bin/env bash 

# BUILD a command to random an github emoji
OUTPUT=$1'e.sh' 
sed -e"/{{EMOJIS}}/r emoji.md" -e"/{{EMOJIS}}/d" -e'/^##::/ d' emoji.sh>"$OUTPUT" 
chmod +x "$OUTPUT"

# BUILD  a script file to create commit-msg hook

OUTPUT=$1'c.sh' 
sed -e"/{{EMOJIS}}/r emoji.md" -e"/{{EMOJIS}}/d" -e'/^##::/ d' commit-msg>commit.tmp
sed -e"/{{COMMITMSG}}/r commit.tmp" -e"/{{COMMITMSG}}/d" -e'/^##::/ d' creater.sh>"$OUTPUT"
rm commit.tmp
chmod +x "$OUTPUT"