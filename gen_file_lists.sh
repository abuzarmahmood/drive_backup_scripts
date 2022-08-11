DIR=$1
#ARC_DIR="${DIR}_archive"
ARC_DIR=$(realpath $DIR)_archive
echo $ARC_DIR
tree $DIR > $ARC_DIR/$(basename $DIR).tree
find $DIR > $ARC_DIR/$(basename $DIR).list
