-- invoices_line_item_count.sql: Provide a query that shows all 
-- Invoices but includes the # of invoice line items.

SELECT Invoice.*, COUNT(InvoiceLine.InvoiceLineId) as InvoiceLines
FROM Invoice
INNER JOIN InvoiceLine ON Invoice.InvoiceId = InvoiceLine.InvoiceId
GROUP BY Invoice.InvoiceId