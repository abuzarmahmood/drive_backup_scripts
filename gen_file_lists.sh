DIR=$1
tree $DIR > $DIR/$(basename $DIR).tree
find $DIR > $DIR/$(basename $DIR).list
