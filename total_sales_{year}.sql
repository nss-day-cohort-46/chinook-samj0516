SELECT SUM(Invoice.Total)
FROM Invoice
WHERE InvoiceDate LIKE '%2009%';

SELECT SUM(Invoice.Total)
FROM Invoice
WHERE InvoiceDate LIKE '%2011%';