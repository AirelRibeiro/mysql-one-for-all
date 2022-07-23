SELECT 
	usuario.nome AS 'usuario',
    COUNT(*)AS 'qtde_musicas_ouvidas',
    ROUND(SUM(musica.duracao)/60, 2) AS 'total_minutos'
FROM SpotifyClone.usuario AS usuario
INNER JOIN SpotifyClone.historico_de_reproducao AS historico
ON usuario.id = historico.usuario_id
INNER JOIN SpotifyClone.musica AS musica
ON musica.id = historico.musica_id
GROUP BY usuario.id
ORDER BY usuario.nome;
-- SELECT 
--   u.usuario  AS "usuario", 
--   COUNT(*) AS "qtde_musicas_ouvidas", 
--   ROUND(SUM(duracao_segundos)/60, 2) AS "total_minutos" 
-- FROM SpotifyClone.usuario AS u
-- INNER JOIN SpotifyClone.reproducao AS rep 
--   ON u.usuario_id = rep.usuario_id
-- INNER JOIN SpotifyClone.musicas AS m 
--   ON m.musica_id = rep.musica_id
-- GROUP BY u.usuario
-- ORDER BY u.usuario;

