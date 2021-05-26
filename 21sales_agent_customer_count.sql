-- Provide a query that shows the count of 
-- customers assigned to each sales agent.

SELECT
e.FirstName || ' ' || e.LastName as FullName,
COUNT(c.supportRepId) as customerCount
FROM Employee e 
INNER JOIN Customer c ON c.supportRepId = e.employeeId
GROUP BY e.EmployeeId