#!/bin/bash
FILE=$(cat /home/ubuntu/project/.git/refs/heads/master)
CID=$FILE

filelist=$(git diff-tree --no-commit-id --name-only -r $CID )

echo $filelist
if [[ $filelist == *"file2"* ]]; then
        # call the URL according to your build trigger config
    touch /home/ubuntu/jenkins_particular_file

fi

