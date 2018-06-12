#!/bin/bash
echo "$PATH"
if [ $(git symbolic-ref -q HEAD) = "refs/heads/master" ]
then
	  echo "you are on master, deploying production."
	  netlify deploy -t $NETLIFYKEY
	  
else 
    echo "you are not on master, deploying preview."
    cd public
    netlify deploy -t $NETLIFYKEY
fi
