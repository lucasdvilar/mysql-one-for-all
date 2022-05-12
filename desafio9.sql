SELECT COUNT(*) AS quantidade_musicas_no_historico
FROM SpotifyClone.`history` AS h
INNER JOIN SpotifyClone.users AS u
ON h.user_id = u.id
WHERE u.`name` = 'Bill';
