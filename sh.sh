#!/bin/bash
FILE=$(cat /home/ubuntu/project/.git/refs/heads/master)
CID=$FILE

echo $(git diff-tree --no-commit-id --name-only -r $CID )

