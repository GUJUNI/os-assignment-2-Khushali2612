/*1.Write a script that takes file name from user and display all line
starting with a or b or c. (Use grep/sed)
-------------------------------------------------------------------------------------------------------------------------------------*\

echo "enter file"
read file
grep -E "^[abc]" $file


/*output:-
[mca2227@agni ~]$ sh a1.sh
enter file
a1
apple
banana
cherry*\



































