SELECT
	MusicName AS nome,
  COUNT(MusicName) AS reproducoes
FROM SpotifyClone.Musics AS m
INNER JOIN SpotifyClone.History AS h ON h.MusicID = m.MusicID
INNER JOIN SpotifyClone.Users AS u ON u.UserID = h.UserID
WHERE u.PlanID = 1 OR u.PlanID = 4
GROUP BY MusicName
ORDER BY MusicName;
