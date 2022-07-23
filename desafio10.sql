SELECT
	musica.titulo AS 'nome',
    COUNT(*) AS 'reproducoes'
FROM
	SpotifyClone.musica AS musica
INNER JOIN
	SpotifyClone.historico_de_reproducao AS historico
ON musica.id = historico.musica_id
INNER JOIN
	SpotifyClone.usuario AS usuario
ON historico.usuario_id = usuario.id
WHERE
	usuario.plano_id IN (1, 2)
GROUP BY musica.titulo
ORDER BY musica.titulo;
