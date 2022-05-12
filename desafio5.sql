SELECT s.title AS cancao, COUNT(h.song_id) AS reproducoes
FROM SpotifyClone.songs AS s
INNER JOIN SpotifyClone.`history` AS h
ON s.id = h.song_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;
