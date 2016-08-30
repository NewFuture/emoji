#!/usr/bin/env bash 


# BUILD a command to random an github emoji
OUTPUT=$1'e.sh' 

cat > $OUTPUT <<'BUILD' 
#!/usr/bin/env bash
shuf -n1<<'EMOJIS'
BUILD

cat emoji.md>>$OUTPUT 

echo "EMOJIS">>$OUTPUT 

chmod +x $OUTPUT




# BUILD a command to random an github emoji

OUTPUT=$1'c.sh' 

cat > $OUTPUT <<'BUILD'
#!/usr/bin/env bash
COMMIT_MSG='.git/hooks/commit-msg'
cat >$COMMIT_MSG<<'COMMIT'
#!/bin/sh
EMOJI=$(shuf -n1<<'EMOJIS'
BUILD

cat emoji.md>>$OUTPUT 

cat >> $OUTPUT <<'BUILD'

EMOJIS
);
BUILD

cat 'commit-msg'>>$OUTPUT

cat >> $OUTPUT <<'BUILD'

COMMIT
chmod +x $COMMIT_MSG
BUILD

chmod +x $OUTPUT