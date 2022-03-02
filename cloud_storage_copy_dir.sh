if [[ $# -ne 3 ]]; then
    echo "Illegal number of parameters"
    exit 2
fi
SOURCE=$1
DEST=$2
EMAIL=$3

gsutil -m rsync -r $SOURCE gs://$DEST

echo "$(basename $SOURCE) archiving complete" \
    | mail -s "Archiving folder complete" $EMAIL 
