if [[ $# -ne 2 ]]; then
    echo "Illegal number of parameters"
    exit 2
fi
DIR=$1
EMAIL=$2
cd $DIR
for FILE in $(find . -type f -size +100G);
do 
    split -d -b 100G $FILE $FILE.part;
done
echo "$(basename $DIR) splitting complete" \
    | mail -s "Splitting folder complete" $EMAIL 
