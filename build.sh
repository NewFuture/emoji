#!/usr/bin/env bash 
OUTPUT='e.sh' 

cat > $OUTPUT <<'BUILD' 
#!/usr/bin/env bash
shuf -n1<<'EMOJI'
BUILD

cat emoji.md>>$OUTPUT 

echo "EMOJI">>$OUTPUT 
