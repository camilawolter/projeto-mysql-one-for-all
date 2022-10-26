DROP DATABASE IF EXISTS SpotifyClone;

  CREATE DATABASE IF NOT EXISTS SpotifyClone;

  CREATE TABLE SpotifyClone.artista (
    artista_id INT PRIMARY KEY AUTO_INCREMENT,
    artista VARCHAR(50) NOT NULL
)  ENGINE=INNODB;

  CREATE TABLE SpotifyClone.album (
    album_id INT PRIMARY KEY AUTO_INCREMENT,
    album VARCHAR(50) NOT NULL,
    artista_id INT NOT NULL,
    FOREIGN KEY (artista_id)
        REFERENCES artista (artista_id)
)  ENGINE=INNODB;

  CREATE TABLE SpotifyClone.plano (
    plano_id INT PRIMARY KEY AUTO_INCREMENT,
    plano VARCHAR(50) NOT NULL,
    valor_plano VARCHAR(50) NOT NULL
)  ENGINE=INNODB;

  CREATE TABLE SpotifyClone.usuario (
    usuario_id INT PRIMARY KEY AUTO_INCREMENT,
    usuario VARCHAR(50) NOT NULL,
    idade VARCHAR(50) NOT NULL,
    plano_id INT NOT NULL,
    FOREIGN KEY (plano_id)
        REFERENCES plano (plano_id)
)  ENGINE=INNODB;

  CREATE TABLE SpotifyClone.seguindo_artista (
    usuario_id INT NOT NULL,
    artista_id INT NOT NULL,
    PRIMARY KEY (usuario_id , artista_id),
    FOREIGN KEY (usuario_id)
        REFERENCES usuario (usuario_id),
    FOREIGN KEY (artista_id)
        REFERENCES artista (artista_id)
)  ENGINE=INNODB;

  CREATE TABLE SpotifyClone.cancoes (
    cancao_id INT PRIMARY KEY AUTO_INCREMENT,
    cancao VARCHAR(50) NOT NULL,
    album_id INT NOT NULL,
    duracao_segundos INT NOT NULL,
    FOREIGN KEY (album_id)
        REFERENCES album (album_id)
)  ENGINE=INNODB;

  CREATE TABLE SpotifyClone.historico_reproducoes (
    usuario_id INT NOT NULL,
    cancao_id INT NOT NULL,
    data_reproducao DATETIME NOT NULL,
    PRIMARY KEY (usuario_id , cancao_id, data_reproducao),
    FOREIGN KEY (usuario_id)
        REFERENCES usuario (usuario_id),
    FOREIGN KEY (cancao_id)
        REFERENCES cancoes (cancao_id)
)  ENGINE=INNODB;

  INSERT INTO SpotifyClone.artista (artista)
	VALUES
    ("Beyoncé"),
    ("Queen"),
    ("Elis Regina"),
    ("Baco Exu do Blues"),
    ("Blind Guardian"),
    ("Nina Simone");
    
INSERT INTO SpotifyClone.plano (plano, valor_plano)
	VALUES
    ("gratuito", "0.00"),
    ("familiar", "7.99"),
    ("universitario", "5.99"),
    ("pessoal", "6.99");
    
INSERT INTO SpotifyClone.usuario(usuario, idade, plano_id)
	VALUES
    ("Barbara Liskov", 82, 1),
    ("Robert Cecil Martin", 58, 1),
    ("Ada Lovelace", 37, 2),
    ("Martin Fowler", 46, 2),
    ("Sandi Metz", 58, 2),
    ("Paulo Freire", 19, 3),
    ("Bell Hooks", 26, 3),
    ("Christopher Alexander", 85, 4),
    ("Judith Butler", 45, 4),
    ("Jorge Amado", 58, 4);

INSERT INTO SpotifyClone.album(album, artista_id)
  VALUES
    ("Renaissance",	1),
    ("Jazz", 2),
    ("Hot Space",	2),
    ("Falso Brilhante",	3),
    ("Vento de Maio",	3),
    ("QVVJFA?",	4),
    ("Somewhere Far Beyond", 5),
    ("I Put A Spell On You", 6);

INSERT INTO SpotifyClone.cancoes(cancao, album_id, duracao_segundos)
  VALUES
    ("BREAK MY SOUL", 1, 279),
    ("VIRGO’S GROOVE", 1,	369),
    ("ALIEN SUPERSTAR", 1, 116),
    ("Don’t Stop Me Now", 2,	203),
    ("Under Pressure", 3, 152),
    ("Como Nossos Pais",	4, 105),
    ("O Medo de Amar é o Medo de Ser Livre", 5, 207),
    ("Samba em Paris", 6, 267),
    ("The Bard’s Song", 7, 244),
    ("Feeling Good", 8, 100);

INSERT INTO SpotifyClone.historico_reproducoes(usuario_id, cancao_id, data_reproducao)
  VALUES
    (1,	8, "2022-02-28 10:45:55"),
    (1,	2, "2020-05-02 05:30:35"),
    (1,	10, "2020-03-06 11:22:33"),
    (2,	10, "2022-08-05 08:05:17"),
    (2,	7, "2020-01-02 07:40:33"),
    (3,	10, "2020-11-13 16:55:13"),
    (3,	2, "2020-12-05 18:38:30"),
    (4,	8, "2021-08-15 17:10:10"),
    (5,	8, "2022-01-09 01:44:33"),
    (5,	5, "2020-08-06 15:23:43"),
    (6,	7, "2017-01-24 00:31:17"),
    (6,	1, "2017-10-12 12:35:20"),
    (7,	4, "2011-12-15 22:30:49"),
    (8,	4, "2012-03-17 14:56:41"),
    (9,	9, "2022-02-24 21:14:22"),
    (10,	3, "2015-12-13 08:30:22");

  INSERT INTO SpotifyClone.seguindo_artista(usuario_id, artista_id)
    VALUES
      (1,	1),
      (1,	2),
      (1,	3),
      (2,	1),
      (2,	3),
      (3,	2),
      (4,	4),
      (5,	5),
      (5,	6),
      (6,	6),
      (6,	1),
      (7,	6),
      (9,	3),
      (10, 2);