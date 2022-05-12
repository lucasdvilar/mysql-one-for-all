SELECT a.`name` AS artista, alb.title AS album
FROM SpotifyClone.artists AS a
INNER JOIN SpotifyClone.albums AS alb
ON a.id = alb.artist_id
WHERE a.`name` = 'Walter Phoenix';
