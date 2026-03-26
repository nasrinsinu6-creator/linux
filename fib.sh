if [ $# -ne 1 ]
then
echo "syntax is <$0> <Number>"
exit 1
fi
n=$1
fi=0
f2=1
echo $fi
echo $f2
i=2
while [ $i -lt $n ]
do
f=`expr $f1 + $f2`
echo $f
f1=$f2
f2=$f
i=`expr $i + 1`
done

