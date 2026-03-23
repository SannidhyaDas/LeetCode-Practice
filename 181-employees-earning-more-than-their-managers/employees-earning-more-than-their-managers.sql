# Write your MySQL query statement below
-- SELECT name, salary AS Employee FROM Employee WHERE managerId != id AND salary >
-- (SELECT id, name, salary AS Employee FROM Employee WHERE managerId IS NULL)

SELECT e1.name AS Employee FROM Employee e1 JOIN Employee e2 ON e1.managerId=e2.id WHERE e1.salary > e2.salary;