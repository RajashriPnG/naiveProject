#!/bin/sh
echo Hi
#echo "You are attempting to push to the ${GITHUB_REPO_NAME} repository which has been made read-only"
#echo " Access denied, push blocked. Please contact the repository administrator."
#git show $GITHUB_SHA --name-only 
#echo $GITHUB_SHA
#curl "https://api.github.com/repos/$GITHUB_REPOSITORY/commits/$GITHUB_SHA" | grep -F filename | awk '{print$2}' | cut -d \, -f1 > committedFiles.log
#env
#echo $GITHUB_WORKSPACE

#curl  "https://api.github.com/repos/$GITHUB_REPOSITORY/commits/$GITHUB_SHA"

export t="`date '+%H%M'`"
export d="`date --iso`"
spin=SPFileList-$d-$t
echo $spin
full="partial"

while getopts f o
do	case "$o" in
	f)	full="full" ;;
	[?])	echo >&2 "Usage: $0 [ -c ]"; exit 1;;
	esac
done
shift `expr $OPTIND - 1`
ddir=SPDetailOutput
mkdir $ddir
indexout=$ddir/index.html
touch $indexout
hout () {
    echo "$@" >> $indexout
}
hout "<html>"
hout "    <title>SailPoint Index on $d $t</title>"
hout "    <header>SailPoint Index on $d $t</header>"
hout "</html>"
#exit 1
