-- Provide a query that shows the total sales per country.

SELECT BillingCountry, COUNT(InvoiceId) NumberOfSales FROM Invoice
GROUP BY BillingCountry
ORDER BY NumberOFSales DESC