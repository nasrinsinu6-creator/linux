if [ $# -eq 0 ]
then
echo "syntax is <$0> <filename>"
exit 1
fi
if [ ! -e $1 ]
then
echo "file doesn't exist"
exit 1
fi
echo "1.ordinary file"
echo "2.directory file"
echo "3.readable to ugo"
echo "4.executable to ugo"
echo "enter your choice"
read ch
case $ch in
1)
if [ -f $1 ]
then
echo "it is a ordinary file"
else
echo "not an ordinary file"
fi
;;
2)
if [ -d $1 ]
then
echo "it is a directory"
else
echo "not a directory"
fi
;;
3)
if [ -r $1 ]
then
echo "it is readable"
else
echo "not readable"
fi
;;
4)
if [ -x $1 ]
then
echo "it is executable"
else
echo "not executable"
fi
;;
*)
echo "invlid choice"
esac 
