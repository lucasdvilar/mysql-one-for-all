SELECT s.title AS nome, COUNT(h.song_id) AS reproducoes
FROM SpotifyClone.songs AS s
INNER JOIN SpotifyClone.`history` AS h
ON s.id = h.song_id
INNER JOIN SpotifyClone.users AS u
ON u.id = h.user_id
WHERE u.plan_id IN(1, 4)
GROUP BY nome
ORDER BY nome;
