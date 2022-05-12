SELECT u.`name` AS usuario, COUNT(h.song_id) AS qtde_musicas_ouvidas, ROUND(SUM(s.length_seconds) / 60, 2) AS total_minutos
FROM SpotifyClone.users AS u
INNER JOIN SpotifyClone.`history` AS h
ON u.id = h.user_id
INNER JOIN SpotifyClone.songs AS s
ON s.id = h.song_id
GROUP BY usuario
ORDER BY usuario;
