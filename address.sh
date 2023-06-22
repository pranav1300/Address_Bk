#!/bin/bash

list()
{
echo "Press 1 to insert record" 
echo "Press 2 to search record"
echo "Press 3 to remove record"
echo "Press 4 to edit record"
echo "Press ^C to quit"
read X
}

add_record()
{

 echo "Please enter the name: "
 read Name
 echo "Please enter the email: "
 read email
 echo "Please enter phone number: "
 read ph
 echo "$Name:$email:$ph" >> address.txt
}

search_record()
{

 echo "Please enter the name to search:"
 read Name
 grep $Name address.txt
}

remove_record()

{
 echo "Enter the name to remove the record:"
 read Name
 sed -i "/$Name/d" address.txt
}

edit_record()
{
echo "Enter the name of the record to edit:"
read Name
Line = $(grep -n $Name address.txt)
echo "Edit now:"
echo "Name:Email:Ph"
read A
echo $Line

}

while :

list
do
if [ "$X" = "1" ];then
add_record


elif [ "$X" = "2" ];then
search_record


elif [ "$X" = "3" ];then
remove_record

elif [ "$X" = "4" ];then
edit_record


else
echo "Press correct number"
fi

done
