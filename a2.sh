/*2.Write a script that takes file name from user and display all line
starting not with a or b or c. (Use grep/sed)
----------------------------------------------------------------------------------------------------------------------------------*\
echo "enter file"
read file
grep -vE "^[abc]" $file

/*output:-

[mca2227@agni ~]$ sh a2.sh
enter file
a2
khushi
ruchit
parth*\