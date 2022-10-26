SELECT 
    a.artista AS artista, al.album AS album
FROM
    SpotifyClone.artista AS a
        INNER JOIN
    SpotifyClone.album AS al ON a.artista_id = al.artista_id
WHERE
    artista = 'Elis Regina';