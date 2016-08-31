#!/usr/bin/env bash
##:: the template of the create scipt to build commit-msg hook
##:: {{}} is template vars
##:: commmet start with ##::
#the scipt auto add the commit-msg hook of git

# path of <commit-msg>
COMMIT_MSG='.git/hooks/commit-msg'
# create the <commit-msg> hooks file
cat >"$COMMIT_MSG"<<'COMMIT'
{{COMMITMSG}}
COMMIT

PERL_SHUF="perl -MList::Util=shuffle -e 'print @{[shuffle<>]}[0];'";
# replace the shuffle method in the <commit-msg>
if [ "$(uname)" == "Darwin" ]; then 
#MAC use perl shuffle
    sed -i '' "s/{{SHUF_ONE}}/${PERL_SHUF}/g" "$COMMIT_MSG"
else 
# LINUX use the shuf preferentially
    SHUF='shuf -n1';
    command -v shuf >/dev/null 2>&1 || SHUF=$PERL_SHUF;
    sed -i'' "s/{{SHUF_ONE}}/${SHUF}/g" "$COMMIT_MSG"
fi;

chmod +x "$COMMIT_MSG"

echo "^_^ Well done! The Github Emojis hook of commit-msg is ready! :)"
