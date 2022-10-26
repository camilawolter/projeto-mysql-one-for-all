SELECT 
    c.cancao AS nome, COUNT(h.usuario_id) AS reproducoes
FROM
    SpotifyClone.cancoes AS c
        INNER JOIN
    SpotifyClone.historico_reproducoes AS h ON h.cancao_id = c.cancao_id
        INNER JOIN
    SpotifyClone.usuario AS u ON u.usuario_id = h.usuario_id
WHERE
    u.plano_id IN (1 , 4)
GROUP BY nome
ORDER BY nome;