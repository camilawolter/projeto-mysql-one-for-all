SELECT 
    u.usuario AS usuario,
    CASE
        WHEN MAX(h.data_reproducao) >= '2021-01-01' THEN 'Usuário ativo'
        ELSE 'Usuário inativo'
    END AS status_usuario
FROM
    SpotifyClone.usuario AS u
        INNER JOIN
    SpotifyClone.historico_reproducoes AS h ON u.usuario_id = h.usuario_id
GROUP BY u.usuario_id
ORDER BY u.usuario;