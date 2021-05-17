if [[ $# -ne 2 ]]; then
    echo "Illegal number of parameters"
    exit 2
fi

DIR=$(realpath $1)
EMAIL=$2
ARC_DIR=$(dirname $DIR)/$(basename $DIR)_archive
#echo $ARC_DIR
mkdir $ARC_DIR
for SUBDIR in $(find $DIR -mindepth 1 -maxdepth 1 -type d);
do
    #echo $SUBDIR;
    #tar --use-compress-program="pigz -0 -p16" \
    #    -cvf $ARC_DIR/$(basename $SUBDIR).tar.gz -C $SUBDIR .;
    cd $DIR
    zip -r -s 100g -0 $ARC_DIR/$(basename $SUBDIR).zip $(basename $SUBDIR);
done
echo "$(basename $DIR) archiving complete" \
    | mail -s "Archiving folder complete" $EMAIL 
