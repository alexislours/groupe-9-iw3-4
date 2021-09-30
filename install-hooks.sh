#!/bin/sh
echo "#!/usr/bin/env python
import re, sys, os

def main():
    pattern = r'(chore|feat|imp|fix)(\([\w\-]+\))?:\s.*'
    filename = sys.argv[1]
    ss = open(filename, 'r').read()
    m = re.match(pattern, ss)
    if m == None: raise Exception(\"conventional commit validation failed\")

if __name__ == \"__main__\":
    main()" > .git/hooks/commit-msg

chmod +x .git/hooks/commit-msg