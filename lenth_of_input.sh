#/bin/bash
echo "Enter Name: "
read  name
echo "$name"
#Using `expr` to count the length of a string
length_=`expr ${#name}`
echo "LENGTH= $length_"
# With Length Function

length1=`expr length "$name"`
echo "$length1"

#With wc command

length2=`echo -n $name| wc -c`
echo "Length with wc option: $length2"

#words count with wc

word_count=`echo $name| wc -w`
echo "total words in input: $word_count"

#with AWK Command

with_awk_count=`echo $name |awk '{print length}'`
echo "Count with AWK Command: $with_awk_count"
