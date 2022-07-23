SELECT
	musica.titulo AS 'nome_musica',
    CASE 
      WHEN musica.titulo LIKE '%Streets%' THEN REPLACE(titulo, 'Streets', 'Code Review')
      WHEN musica.titulo LIKE '%Her Own%' THEN REPLACE(titulo, 'Her Own', 'Trybe')
      WHEN musica.titulo LIKE '%Inner Fire%' THEN REPLACE(titulo, 'Inner Fire', 'Project')
      WHEN musica.titulo LIKE '%Silly%' THEN REPLACE(titulo, 'Silly', 'Nice')
      WHEN musica.titulo LIKE '%Circus%' THEN REPLACE(titulo, 'Circus', 'Pull Request')
	END AS "novo_nome"
FROM SpotifyClone.musica
WHERE 
musica.titulo LIKE '%Streets%'
OR musica.titulo LIKE '%Her Own%'
OR musica.titulo LIKE '%Inner Fire%'
OR musica.titulo LIKE '%Silly%'
OR musica.titulo LIKE '%Circus%';