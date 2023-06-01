/*4. Write a script that takes file name from user and substitute all spaces
“ “ with # value. (Use grep/sed)
----------------------------------------------------------------------------------------------------------------------------------*\
echo "enter file"
read file
sed -i 's/ /#/g' $file

/*output:-
[mca2227@agni ~]$ cat a4
#####hi
hello
#how#are#you*\