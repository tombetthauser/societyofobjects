cat ./assets/header.html > ./index.html

for file in ls -lrth ./images/*
do
  ext="${file##*.}"
  if [ "$ext" == "jpg" ] || [ "$ext" == "png" ] || [ "$ext" == "jpeg" ]
  then
    echo "<a href='$file'><img src='$file'></a>" >> ./index.html
    noextfile=${file%.*}
    noslashfile=${noextfile##*/}
    echo "<p>$noslashfile</p><br>" >> ./index.html
    let COUNT++
  fi
done

cat ./assets/footer.html >> ./index.html

cp ./index.html ./README.md