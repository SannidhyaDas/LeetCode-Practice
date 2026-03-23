# Write your MySQL query statement below
#SELECT salary AS SecondHighestSalary from Employee LIMIT 1,1
## Test case 2 failed by above code.

SELECT max(salary) AS SecondHighestSalary from Employee e1 WHERE salary < (SELECT max(salary) from Employee); 