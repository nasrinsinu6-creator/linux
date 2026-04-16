if [ $# -eq 0 ]
then
echo "syntax is <$0><dirname>"
exit 1
fi
if [ ! -d $1 ]
then
echo "directory doesn't exist"
exit 1
fi
echo "directory of $1"
echo "-----------------------"
for file in $1/*
do
if [ -f "$file" ]
then
echo "FILE    : $(basename $file)"
elif [ -d "$file" ]
then
echo "DIRECTORY : $(basename $file)"
fi
done
echo "----------------------"
