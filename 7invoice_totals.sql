Select 
Invoice.Total, 
Customer.FirstName || " " || Customer.LastName as CustomerFullName,
Customer.Country,
Employee.FirstName || " " || Employee.LastName as SaleAgent
From Customer
JOIN Invoice
ON Invoice.CustomerId = Customer.CustomerId
JOIN Employee
ON Customer.SupportRepId = Employee.EmployeeId
ORDER BY CustomerFullName ASC