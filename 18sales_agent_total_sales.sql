-- Provide a query that shows total sales made by each sales agent.

SELECT Employee.FirstName as FirstName, Employee.lastName as LastName, SUM(total)
FROM Customer
    INNER JOIN Employee
    on Employee.EmployeeId = Customer.SupportRepId
    INNER JOIN Invoice
    on Invoice.CustomerId = Customer.CustomerId
GROUP BY EmployeeId