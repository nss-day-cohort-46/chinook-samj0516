-- Provide a query that shows the top 3 best selling artists.

SELECT Artist.Name as Artist, SUM(InvoiceLine.UnitPrice) as TotalSales, COUNT(*)
FROM InvoiceLine
JOIN Track ON InvoiceLine.TrackId = Track.TrackId
JOIN Album ON Track.AlbumId = Album.AlbumId
JOIN Artist ON Album.ArtistId = Artist.ArtistId
GROUP BY Artist.Name
ORDER BY TotalSales DESC
LIMIT 3