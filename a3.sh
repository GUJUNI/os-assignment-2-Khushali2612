/*3. Write a script that takes file name from user and display all line
starting not with a or b or c with line numbers. (Use grep/sed)
-------------------------------------------------------------------------------------------------------------------------------*\
echo "enter file"
read file
grep -vnE "^[abc]" $file

/*output:-
[mca2227@agni ~]$ sh a3.sh
enter file
a3
4:khushi
5:parth*\