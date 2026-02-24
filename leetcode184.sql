WITH Temp AS (
    SELECT *, RANK() OVER ( PARTITION BY departmentId ORDER BY salary DESC) AS rnk
    FROM Employee
)
SELECT d.name AS Department, t.name AS Employee, Salary
FROM Department d
INNER JOIN Temp t ON t.departmentId = d.id
WHERE rnk = 1
ORDER BY t.id ASC
