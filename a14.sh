
/*14.
Write a shell script to generate summary from the sales.dat file.Sales
made by 3 salesman by selling 3 products are entered in a file. Add
atleast 10 records. The format is as shown below:
Salesman:Product1:Product2:Product3
Sample data:
Mr. Abhishek Sharma:21:29:12
Mr. Akash Srivastava:11:15:28
Mr. Abhilash Dwivedi:31:04:13
Calculate the followings :
1. Total sales of the company
2. Highest sold product
3. Best salesman (who sold the most)
4. Worst salesman (who sold the least)*\
echo "Sales data from file"
sales_file="sales.dat"
sales_data=$(cat "$sales_file")


total_sales=0
product1_sales=0
product2_sales=0
product3_sales=0
best_salesman=""
best_sales=0
worst_salesman=""
worst_sales=99999999


while read -r line; do
  # Parse salesman and product sales
  salesman=$(echo "$line" | cut -d ':' -f 1)
  product1=$(echo "$line" | cut -d ':' -f 2)
  product2=$(echo "$line" | cut -d ':' -f 3)
  product3=$(echo "$line" | cut -d ':' -f 4)

  
  total_sales=$((total_sales + product1 + product2 + product3))

 
  product1_sales=$((product1_sales + product1))
  product2_sales=$((product2_sales + product2))
  product3_sales=$((product3_sales + product3))

  salesman_sales=$((product1 + product2 + product3))
  if (( salesman_sales > best_sales )); then
    best_salesman="$salesman"
    best_sales=$salesman_sales
  fi
  if (( salesman_sales < worst_sales )); then
    worst_salesman="$salesman"
    worst_sales=$salesman_sales
  fi
done <<< "$sales_data"
/*output:-
[mca2227@agni ~]$ sh a_1_4.sh
Sales data from file
Total sales: 739
Product1 sales: 274
Product2 sales: 227
Product3 sales: 238
Best salesman: Mr. Chintan prajapati (120)
Worst salesman: Mr. Abhilash Dwivedi (48)*\\

