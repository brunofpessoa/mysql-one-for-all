SELECT
	ar.ArtistName AS artista,
	al.AlbumName AS album
FROM SpotifyClone.Artists AS ar
INNER JOIN SpotifyClone.Albums AS al ON al.ArtistID = ar.ArtistID
HAVING artista = "Elis Regina";
