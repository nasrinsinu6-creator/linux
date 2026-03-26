if [ $# -ne 3 ]
then 
echo "syntax is <$0> <no><opr><no>"
exit 1
fi
case $2 in
+)ans=`expr $1 + $3`;;
-)ans=`expr $1 - $3`;;
/)ans=`expr $1 / $3`;;
X|x)ans=`expr $1 "*" $3`;;
%)ans=`expr $1 % $3`;;
esac
echo $ans


