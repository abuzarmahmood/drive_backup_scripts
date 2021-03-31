if [[ $# -ne 2 ]]; then
    echo "Illegal number of parameters"
    exit 2
fi
DIR=$1
EMAIL=$2

rclone sync -P $DIR katz-lab-archive:/$DIR

echo "$(basename $DIR) archiving complete" \
    | mail -s "Archiving folder complete" $EMAIL 
