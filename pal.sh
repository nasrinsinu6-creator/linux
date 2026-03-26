if [ $# -ne 1 ]
then
echo "Syntax is <$0> <Number>"
exit 1
fi
no=$1
rev=0
while [ $no -ne 0 ]
do
s=`expr $no % 10`
rev=`expr $rev \* 10 + $s`
no=`expr $no / 10`
done
if [ $1 -eq $rev ]
then
echo "number is palindrome"
else
echo "number is not palindrome"
fi

