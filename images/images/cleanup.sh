COUNT=0
for file in ls -lth *
do

  ext="${file##*.}"
  if [ "$ext" == "jpg" ] || [ "$ext" == "png" ] || [ "$ext" == "jpeg" ]
  then
    # echo $file
    echo "$file" "$COUNT.$ext"
    let COUNT++
  fi
done
