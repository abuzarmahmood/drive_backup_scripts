if [[ $# -ne 2 ]]; then
    echo "Illegal number of parameters"
    exit 2
fi

DIR=$(realpath $1)
EMAIL=$2
ARC_DIR=$(dirname $DIR)/$(basename $DIR)_archive
for SUBDIR in $(find $ARC_DIR -mindepth 1 -maxdepth 1 -iname "*.z*");
do
    #PAR_DIR="${SUBDIR:0:-4}_par2" 
    PAR_DIR="${SUBDIR}_par2" 
    mkdir $PAR_DIR
    par2create -r10 -n5 $SUBDIR
    mv $SUBDIR.* $PAR_DIR
 done
echo "$(basename $DIR) par-ing complete" \
    | mail -s "$(basename $DIR) par-ing complete" $EMAIL 
