SELECT
	CONVERT(MIN(plano.valor), CHAR) AS 'faturamento_minimo',
    CONVERT(MAX(plano.valor), CHAR) AS 'faturamento_maximo',
    CONVERT(ROUND(AVG(plano.valor), 2), CHAR) AS 'faturamento_medio',
    CONVERT(SUM(plano.valor), CHAR) AS 'faturamento_total'
FROM 
	SpotifyClone.plano AS plano
INNER JOIN
	SpotifyClone.usuario AS usuario
ON usuario.plano_id = plano.id;
	