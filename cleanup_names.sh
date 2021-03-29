DIR=$1
find $DIR -maxdepth 1 -iname "* *" -exec rename 's/ /_/g' {} \;
find $DIR -maxdepth 1 -iname "*\(*" -exec rename 's#\(#_#g' {} \;
find $DIR -maxdepth 1 -iname "*\)*" -exec rename 's#\)#_#g' {} \;
