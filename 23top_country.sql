-- Which country's customers spent the most?

WITH TotalSales AS (
    SELECT SUM(Total) Total,
        BillingCountry Country
    FROM Invoice
    GROUP BY BillingCountry
)
SELECT '$' || MAX(Total) "Grand Total",
    Country
FROM TotalSales