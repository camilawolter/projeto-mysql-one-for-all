SELECT 
    a.artista AS artista,
    al.album AS album,
    COUNT(s.usuario_id) AS seguidores
FROM
    SpotifyClone.artista AS a
        INNER JOIN
    SpotifyClone.album AS al ON a.artista_id = al.artista_id
        INNER JOIN
    SpotifyClone.seguindo_artista AS s ON al.artista_id = s.artista_id
GROUP BY artista , album
ORDER BY seguidores DESC , artista , album;