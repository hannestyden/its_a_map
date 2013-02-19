status=0
ls spec/*_spec.rb | while read f
do
  ruby $f
  [[ ! $? -eq 0 ]] && status=1
done
exit $status
