SELECT
	(SELECT COUNT(cancao) FROM SpotifyClone.cancoes) AS cancoes,
    (SELECT COUNT(artista) FROM SpotifyClone.artista) AS artistas,
    (SELECT COUNT(album) FROM SpotifyClone.album) AS albuns;