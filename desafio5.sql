SELECT
  MusicName AS cancao,
  COUNT(h.MusicID) AS reproducoes
FROM SpotifyClone.Musics AS m
INNER JOIN SpotifyClone.History AS h ON h.MusicID = m.MusicID
GROUP BY MusicName
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;