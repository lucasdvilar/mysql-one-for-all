SELECT a.`name` AS artista, alb.title AS album, COUNT(f.artist_id) AS seguidores
FROM SpotifyClone.artists AS a
INNER JOIN SpotifyClone.albums AS alb
ON a.id = alb.artist_id
INNER JOIN SpotifyClone.`following` AS f
ON a.id = f.artist_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;
