--  Provide a query that shows the top 5 most purchased tracks over all.

SELECT COUNT(InvoiceLine.InvoiceId) as TrackCount, Track.Name as TrackName, Track.TrackId
FROM InvoiceLine
JOIN Track ON InvoiceLine.TrackId = Track.TrackId
GROUP BY Track.TrackId
ORDER BY TrackCount DESC
LIMIT 5