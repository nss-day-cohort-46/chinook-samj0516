-- tracks_no_id.sql: Provide a query that shows all the Tracks, 
-- but displays no IDs. 
-- The result should include the Album name, Media type and Genre.

SELECT Track.Name as TName, Album.Title as ATitle, MediaType.Name as MT, Genre.Name as GName
FROM Track
Join Album ON Track.AlbumId = Album.AlbumId
JOIN MediaType ON Track.MediaTypeId = MediaType.MediaTypeId
JOIN Genre ON Track.GenreId = Genre.GenreId