cat domains.txt | while read line
do
code=`curl -s -o /dev/null -IL -w "%{http_code}" $line`
echo $code $line
done
