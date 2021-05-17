DIR=$1
EMAIL=$2
ARC_DIR="${DIR}_archive"
tree $DIR > $ARC_DIR/$(basename $DIR).tree
find $DIR > $ARC_DIR/$(basename $DIR).list
