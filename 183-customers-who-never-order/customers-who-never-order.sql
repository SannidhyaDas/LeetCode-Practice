# Write your MySQL query statement below
-- SELECT name AS Customers FROM Customers 
-- WHERE name NOT IN (SELECT c.name FROM Customers AS c
-- JOIN Orders AS o ON c.id=o.customerId);  
#ABOVE SOLN FAILED WHEN NAME IN NOT UNIQUE 

SELECT name AS Customers
FROM Customers
WHERE id NOT IN (
    SELECT customerId 
    FROM Orders
);