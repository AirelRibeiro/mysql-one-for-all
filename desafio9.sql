SELECT 
    COUNT(*) AS 'quantidade_musicas_no_historico'
FROM
	SpotifyClone.historico_de_reproducao AS historico
INNER JOIN
	SpotifyClone.usuario AS usuario
ON usuario.id = historico.usuario_id
GROUP BY usuario.nome
HAVING usuario.nome = 'Bill';
