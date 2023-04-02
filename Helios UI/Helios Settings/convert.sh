find . -type f | while read IN; do
  if [ "x$(file -b --mime-type $IN)" = "ximage/png" ]; then
    mogrify -alpha deactivate -negate "$IN";
  fi;
done;

