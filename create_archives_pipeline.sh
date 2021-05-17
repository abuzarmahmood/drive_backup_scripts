if [[ $# -ne 2 ]]; then
    echo "Illegal number of parameters"
    exit 2
fi

DIR=$1
ADDR=$2
bash cleanup_names.sh $DIR
bash move_unclaimed_files.sh $DIR
bash create_archives.sh $DIR $ADDR
bash gen_file_lists.sh $DIR
bash create_par_files.sh $DIR $ADDR
