# Write your MySQL query statement below
-- SELECT d.name AS Department, 
-- e.name AS Employee,
-- e.salary AS Salary, DENSE_RANK() OVER(PARTITION BY d.name ORDER BY e.salary DESC) rnk FROM Employee AS e
-- LEFT JOIN Department AS d ON e.departmentId = d.id
-- ORDER BY e.salary DESC;
########### WRONG ANS

WITH temp AS 
 (
    SELECT d.name AS Department, 
    e.name AS Employee,
    e.salary AS Salary, DENSE_RANK() OVER(PARTITION BY d.name ORDER BY e.salary DESC) rnk FROM Employee AS e
    LEFT JOIN Department AS d ON e.departmentId = d.id
    ORDER BY e.salary DESC
 )
SELECT Department, Employee, Salary
FROM temp
WHERE rnk <= 3;