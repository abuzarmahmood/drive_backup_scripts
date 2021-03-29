DIR=$1
if (find $DIR -maxdepth 1 -type f | wc -l) > 0;
then 
    mkdir $DIR/unclaimed
    find $DIR -maxdepth 1 -type f -exec mv {} $DIR/unclaimed \;
fi
