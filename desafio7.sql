SELECT
	ar.ArtistName AS artista,
	al.AlbumName AS album,
  COUNT(f.ArtistID) AS seguidores
FROM SpotifyClone.Artists AS ar
INNER JOIN SpotifyClone.Albums AS al ON al.ArtistID = ar.ArtistID
INNER JOIN SpotifyClone.Following AS f ON f.ArtistID = ar.ArtistID
GROUP BY al.AlbumID
ORDER BY seguidores DESC, artista, album;
