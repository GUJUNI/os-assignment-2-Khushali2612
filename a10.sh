/*5.Write a script that takes file name from user and display all line start
with t or T and second character must be either ‘h’ or ‘s’. (Use
grep/sed)
--------------------------------------------------------------------------------------------------------------------------------------*\

count_links() {
    local num_links=$(find "$1" -mindepth 1 -maxdepth 1 | wc -l)
    echo "$num_links"
}
find . -mindepth 1 -maxdepth 1 | while read file; do
    if [[ -f "$file" || -d "$file" ]]; then
        num_links=$(count_links "$file")
        echo "$num_links $file"
    fi
done | sort -n

/*output:-
[mca2227@agni ~]$ sh a10.sh
0 ./.12.sh.swp
0 ./2.py
0 ./.2.sh.swp
0 ./.7.sh.swp
0 ./a
0 ./a1
0 ./a10.sh
0 ./a11.sh
0 ./a12.sh
0 ./a1.sh
0 ./a2
0 ./a2.sh
0 ./a3
0 ./a3.sh
0 ./a4
0 ./a4.sh
0 ./a5.sh
0 ./.a5.sh.swp
0 ./a6.sh
0 ./.bash_history
0 ./.bash_logout
0 ./.bash_profile
0 ./.bashrc
0 ./clear
0 ./.emacs
0 ./file1
0 ./file.txt
0 ./.gnome2
0 ./p11.sh
0 ./p19.sh
0 ./p1.sh
0 ./p20.sh
0 ./p2.sh
0 ./p5.sh
0 ./p6.sh
0 ./p7.sh
0 ./p8.sh
0 ./p9.sh
0 ./sales.dat
0 ./two.sh
0 ./.viminfo
0 ./.zshrc
2 ./.mozilla*\