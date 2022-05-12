SELECT u.`name` AS usuario, IF(YEAR(MAX(h.play_date)) = 2021, 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
FROM SpotifyClone.users AS u
INNER JOIN SpotifyClone.`history` AS h
ON u.id = h.user_id
GROUP BY usuario
ORDER BY usuario;
