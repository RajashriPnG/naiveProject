#!/bin/sh
echo Hi
#echo "You are attempting to push to the ${GITHUB_REPO_NAME} repository which has been made read-only"
echo " Access denied, push blocked. Please contact the repository administrator."
git show $GITHUB_SHA --name-only 
echo $GITHUB_SHA
curl "https://api.github.com/repos/$GITHUB_REPOSITORY/commits/$GITHUB_SHA" | grep -F filename | awk '{print$2}' | cut -d \, -f1 > committedFiles.log
env
echo $GITHUB_WORKSPACE

GET /repos/GITHUB_REPOSITORY_OWNER/$GITHUB_REPOSITORY/commits/$GITHUB_SHA
#exit 1
