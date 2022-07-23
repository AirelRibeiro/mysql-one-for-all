SELECT
	usuario.nome AS 'usuario',
    IF(YEAR(MAX(historico.data_de_reproducao)) = 2021, 'Usuário ativo', 'Usuário inativo') AS 'condicao_usuario'
FROM 
	SpotifyClone.usuario AS usuario
INNER JOIN
	SpotifyClone.historico_de_reproducao AS historico
ON usuario.id = historico.usuario_id
GROUP BY usuario.nome
ORDER BY usuario.nome;
