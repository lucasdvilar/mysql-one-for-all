SELECT title AS nome_musica,
	CASE 
		WHEN title LIKE '%Streets' THEN REPLACE(title, 'Streets', 'Code Review')
        WHEN title LIKE '%Her Own' THEN REPLACE(title, 'Her Own', 'Trybe')
        WHEN title LIKE '%Inner Fire' THEN REPLACE(title, 'Inner Fire', 'Project')
        WHEN title LIKE '%Silly' THEN REPLACE(title, 'Silly', 'Nice')
        WHEN title LIKE '%Circus' THEN REPLACE(title, 'Circus', 'Pull Request')
        ELSE title
	END AS novo_nome
FROM SpotifyClone.songs
WHERE title IN('Without My Streets', 'Dance With Her Own', 'Troubles Of My Inner Fire', "Let's Be Silly", 'Magic Circus')
ORDER BY nome_musica;
