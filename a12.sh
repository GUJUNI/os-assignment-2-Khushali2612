/*12. write a script that accepts a string followed by one or more file names
from command line and display no of lines that consists of given
string each file.
------------------------------------------------------------------------------------------------------------------------------------*\
if [ $# -lt 2 ]; then
  echo "Usage: $0 <string> <file1> [<file2> ...]"
  exit 1
fi

target_string="$1"
shift

for file in "$@"; do
  count=$(grep -c "$target_string" "$file")
  echo "$file: $count lines contain '$target_string'"
done
output:-



/*[mca2227@agni ~]$ bash a12.sh hi a2 a3
a2: 2 lines contain 'hi'
a3: 2 lines contain 'hi'*\