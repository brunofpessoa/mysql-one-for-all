SELECT
	UserName AS usuario,
	COUNT(h.UserID) AS qt_de_musicas_ouvidas,
  ROUND(SUM(m.MusicDuration) / 60, 2) AS total_minutos
FROM SpotifyClone.Users AS u
INNER JOIN SpotifyClone.History AS h ON h.UserID = u.UserID
INNER JOIN SpotifyClone.Musics AS m ON m.MusicID = h.MusicID
GROUP BY u.UserName
ORDER BY u.UserName;
