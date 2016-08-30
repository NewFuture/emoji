#!/usr/bin/env bash
##:: the template of the create scipt to build commit-msg hook
##:: {{}} is template vars
##:: commmet start with ##::

# path of <commit-msg>
COMMIT_MSG='.git/hooks/commit-msg'
# create the <commit-msg> hooks file
cat >"$COMMIT_MSG"<<'COMMIT'
{{COMMITMSG}}
COMMIT

if [ "$(uname)" == "Darwin" ]; then 
#MAC
    SHUFONE="perl -MList::Util=shuffle -e 'print @{[shuffle<>]}[0];'";
else 
# LINUX
    SHUFONE='shuf -n1';
fi;

# replace the shuf method in the <commit-msg>
sed -i'' "s/{{SHUF_ONE}}/${SHUFONE}/g" "$COMMIT_MSG"
chmod +x "$COMMIT_MSG"
