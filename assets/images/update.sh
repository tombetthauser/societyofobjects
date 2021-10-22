cat ./assets/header.html > ./index.html

for file in ls -lth ./images/*
do
  ext="${file##*.}"
  if [ "$ext" == "jpg" ] || [ "$ext" == "png" ] || [ "$ext" == "jpeg" ]
  then
    echo "<img src='$file'>" >> ./index.html
    noextfile=${file%.*}
    noslashfile=${noextfile##*/}
    echo "<p>$noslashfile</p>" >> ./index.html
    let COUNT++
  fi
done

cat ./assets/footer.html >> ./index.html