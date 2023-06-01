
  /* 6
  Write a script that takes file name from user and display all line start
  with space(' ') . (Use grep/sed)
-------------------------------------------------------------------------------------------------------------------------------------------------------

 !/bin/bash*/

echo "Enter filename: "
read filename

if [ ! -f $filename ]; then
  echo "File not found!"
  exit 1
fi

echo "Lines starting with a space character:"
grep -E '^ ' $filename

/*output:-
[mca2227@agni ~]$ sh a6.sh
Enter filename:
a6
     bye
[mca2227@agni ~]$ cat a6
That's it, folks!
T-shirt
Habitat
     bye*/