
/*15.Write a shell script to generate summary from a file : “student.dat”
with following format :
Student_no : student_name : gender : marks1 : marks2 : marks3
Each field must be separated by a delimeter ‘-‘
Process the following queries:
1. Calculate the total marks of each student
2. Calculate the percentage of marks for each student
3. Count the total number of male and female students
4. Count the total number of students who pass and those who fail.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------*7
while IFS=':' read -r student_no student_name gender marks1 marks2 marks3; do

  
  total_marks=$(($marks1 + $marks2 + $marks3))

 
  percentage=$(echo "scale=2; ($total_marks / 3)" | bc)


  if [ "$gender" = "male" ]; then
    male_count=$((male_count+1))
  else
    female_count=$((female_count+1))
  fi

  

   if (( $(echo "$percentage > 40" | bc -l) )); then   # check if percentage is greater than 40
        pass_count=$((pass_count + 1))                  # increment pass count
   else
        fail_count=$((fail_count+1))

   fi

 
  echo "$student_no-$student_name-$gender-$marks1-$marks2-$marks3-$total_marks-$percentage"

done < Students.dat


echo "Male Count: $male_count"
echo "Female Count: $female_count"


echo "Pass Count: $pass_count"
echo "Fail Count: $fail_count"
\*output:-
[mca2227@agni ~]$ sh a15..sh                                                                                                                                   26,49         All
1_101-disha_patel-female-70-80-60-210-70.00
2_102-rinku_sinh-male-76-86-67-229-76.33
3_103-krisha_shah-male-89-76-90-255-85.00
4_104-trisha_majumdar-female-77-87-98-262-87.33
Male Count: 2
Female Count: 2
Pass Count: 4
Fail Count:*/