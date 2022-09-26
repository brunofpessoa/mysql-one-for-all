SELECT
	COUNT(*) AS quantidade_musicas_no_historico
FROM SpotifyClone.Users AS u
INNER JOIN SpotifyClone.History AS h ON h.UserID = u.UserID
GROUP BY UserName
HAVING UserName = "Barbara Liskov";
