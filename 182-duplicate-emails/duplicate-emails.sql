# Write your MySQL query statement below
WITH temp AS (SELECT email, COUNT(*) AS freq FROM Person GROUP BY email)
SELECT email FROM temp
WHERE freq>1;