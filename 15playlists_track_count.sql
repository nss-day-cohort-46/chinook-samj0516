SELECT Playlist.Name, COUNT (PlaylistTrack.TrackId)
FROM PlaylistTrack
JOIN Playlist ON PlaylistTrack.PlaylistId = Playlist.PlaylistId
GROUP BY PlayListTrack.PlaylistId;