  

	/*7
  Write a script which takes input from a file, with multiple records, as:
  Firstname:middlename:lastname:address:city:pin:phone
  and displays output as:
  Record 1
  Lastname middlename firstname
  Address
  City - pin
  Phone
  Record 2
  Lastname middlename firstname
  Address
  City - pin
  Phone
  and so on, for all records.
----------------------------------------------------------------------------------------------------------------------------------------------------------*/
echo "Enter input filename: "
read input_file

if [ ! -f $input_file ]; then
  echo "File not found!"
  exit 1
fi

record_count=1

while IFS=':' read -r firstname middlename lastname address city pin phone
do
  echo "Record $record_count"
  echo "$lastname $middlename $firstname"
  echo "$address"
  echo "$city - $pin"
  echo "$phone"
  echo ""
  
  record_count=$((record_count + 1))
done < $input_file
/*[mca2227@agni ~]$ sh a7.sh
Enter input filename:
a7
Record 1
Vaghela isha
123 Maninagar
goa - 363334
1131414515


Record 2
Parmar Yashika
423 2nd St
Ahmedabad - 380007
5466481656

Record 3
Patel neha
233 2nd st
bihar - 2
1245788956*\