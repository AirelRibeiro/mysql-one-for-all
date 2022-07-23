SELECT 
	art.nome AS 'artista',
    al.nome AS 'album',
    COUNT(s.usuario_id) AS 'seguidores'
FROM
	SpotifyClone.artista art
INNER JOIN
	SpotifyClone.album al
ON art.id = al.artista_id
INNER JOIN
	SpotifyClone.artista_seguidor s
ON s.artista_id = art.id
GROUP BY al.nome, s.artista_id
ORDER BY seguidores DESC, artista, album;

