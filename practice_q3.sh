#!/bin/dash

cut -d'|' -f1-2 | sort -t'|' -k2 | cut -d'|' -f2 | uniq -c | egrep "^\s*2" | sed 's/\s2//' | sed 's/\s*//g'
