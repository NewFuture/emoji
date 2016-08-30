#!/usr/bin/env bash
##:: the template of commit-msg hook
##:: {{}} is template vars
##:: commmet start with ##::

perl -MList::Util=shuffle -e 'print @{[shuffle<>]}[0];'<<'EMOJIS'
{{EMOJIS}}
EMOJIS