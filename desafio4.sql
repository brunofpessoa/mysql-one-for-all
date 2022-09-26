SELECT
  UserName AS usuario,
  IF(MAX(YEAR(h.HistoryDate)) >= 2021, "Usuário ativo", "Usuário inativo") AS status_usuario
FROM SpotifyClone.Users AS u
INNER JOIN SpotifyClone.History AS h ON h.UserID = u.UserID
GROUP BY u.UserName
ORDER BY u.UserName;