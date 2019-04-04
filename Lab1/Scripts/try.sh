for i in $( ls ); do
if [ $!i == '1' ]
  then
    echo "woohoo!"
fi
done

#AR=('foo' 'bar' 'baz' 'bat')
#for i in "${!AR[@]};" do
#  printf '${AR[%s]}=%s\n' "$i" "${AR[i]}"
#done