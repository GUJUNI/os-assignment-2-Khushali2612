 --------------------------------------------------------------------------------------------------------------------------------------------
 /* 8
  Write a script that shows usernames and no. of processes running for
them.*\

echo "Username   No. of Processes"
echo "--------------------------"

users=$(ps -eo user= | sort | uniq | awk '{print $1}')

for user in $users
do
    count=$(ps -U $user | awk 'END {print NR-1}')
    echo "$user   $count"
done

/*output:-
avahi   2
dbus   1
gdm   14
mca2227   7
nagios   1
nobody   1
root   116
rpcuser   1
rtkit   1
smmsp   1*\

