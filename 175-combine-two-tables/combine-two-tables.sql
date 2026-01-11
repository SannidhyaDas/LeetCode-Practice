# Write your MySQL query statement below
SELECT p.firstName, p.lastName, d.city, d.state
from Person AS p 
LEFT JOIN Address d on p.personId=d.personId;