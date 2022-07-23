SELECT
	musica.titulo AS 'cancao',
    COUNT(*) AS 'reproducoes'
FROM
	SpotifyClone.musica AS musica
INNER JOIN
	SpotifyClone.historico_de_reproducao AS historico
ON musica.id = historico.musica_id
GROUP BY historico.musica_id
ORDER BY COUNT(*) DESC, musica.titulo
LIMIT 2;