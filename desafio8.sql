SELECT 
	art.nome AS 'artista',
    al.nome AS 'album'
FROM
	SpotifyClone.artista art
INNER JOIN
	SpotifyClone.album al
ON art.id = al.artista_id
WHERE art.nome = 'Walter Phoenix';