SELECT
	MusicName AS nome_musica,
    CASE
      WHEN MusicName LIKE '%Bard%' THEN REPLACE(MusicName, 'Bard', 'QA')
      WHEN MusicName LIKE '%Amar%' THEN REPLACE(MusicName, 'Amar', 'Code Review')
      WHEN MusicName LIKE '%Pais%' THEN REPLACE(MusicName, 'Pais', 'Pull Requests')
      WHEN MusicName LIKE '%SOUL%' THEN REPLACE(MusicName, 'SOUL', 'CODE')
      WHEN MusicName LIKE '%SUPERSTAR%' THEN REPLACE(MusicName, 'SUPERSTAR', 'SUPERDEV')
      ELSE MusicName
    END AS novo_nome
FROM SpotifyClone.Musics
HAVING MusicName <> novo_nome
ORDER BY nome_musica DESC;