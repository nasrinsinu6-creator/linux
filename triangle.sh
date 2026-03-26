if [ $# -ne 3 ]
  then
    
 echo "Syntax is $0 <no1><no2><no3>"

  exit 1
fi
  n1=$1 
  n2=$2
  n3=$3
  
 if [ $n1 -gt $n2 ]
  then
   temp=$n1
     n1=$n2
     n2=$temp
fi
  if [ $n2 -gt $n3 ]
  then
    temp=$n2
      $n2=$n3
      $n3=temp
fi
  if [ `expr $n1 + $n2` -gt $n3 ]
   then
    echo "Triangle can be formed"
  else
    echo "Triangle can't formed"
exit 1 
fi
  aa=`expr $n1 "*" $n1`
  bb=`expr $n2 "*" $n2`
  cc=`expr $n3 "*" $n3`
  if [ `expr $aa + $bb` -eq $cc ] 
   then
     echo "right angled..."

  elif [ $n1 -eq $n2 -a $n1 -eq $n3 ] 
   then
    echo "Triangle is equalater "
  elif [ $n1 -eq $n2 -o  $n1 -eq $n3 -o $n2 -eq $n3 ]
    then
      echo " it is an isosceles triangle"
  else
     echo " it is a normal triamgle"
fi 


exit 0

