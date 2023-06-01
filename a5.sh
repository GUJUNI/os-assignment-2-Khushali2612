 /*
  5
  Write a script that takes file name from user and display all line start
  with t or T and second character must be either 'h' or 's'. 
  (Use grep/sed)
  -------------------------------------------------------------------------------------------------------------------------------*\


echo "Enter filename: "
read filename

if [ ! -f $filename ]; then
  echo "File not found!"
  exit 1
fi

echo "Lines starting with t or T and having either 'h' or 's' as the second character:"
grep -Ei '^t[h|s]' $filename

/*output:-
Enter filename:
file.txt
Lines starting with t or T and having either 'h' or 's' as the second character:

[mca2227@agni ~]$ cat file.txt
  hi..........*\