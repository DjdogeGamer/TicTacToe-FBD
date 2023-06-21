/* Criar banco de dados */

CREATE DATABASE tic_tac_toe_db;

/* criação das tabelas */

CREATE TABLE jogador
(
    idJogador      INT          NOT NULL UNIQUE,
    nomeJogador    VARCHAR(255),
    nacionalidade  VARCHAR(255),
    nomeUsuario    VARCHAR(255),
    senha          VARCHAR(255) NOT NULL,
    posicaoRanking INT,
    vitorias       INT,
    derrotas       INT,
    empates        INT,
    pontos         INT,
    tempoTotalJogo FLOAT,
    totalJogos     INT,
    PRIMARY KEY (idJogador)
);

CREATE TABLE jogo
(
    idJogo     INT NOT NULL UNIQUE AUTO_INCREMENT,
    nome       VARCHAR(255),
    senha      VARCHAR(255),
    modoJogo   INT NOT NULL,
    idJogador1 INT NOT NULL,
    idJogador2 INT NOT NULL,
    pontuacao1 INT,
    pontuacao2 INT,
    dataJogo   DATE,
    tempoJogo  TIME,
    PRIMARY KEY (idJogo),
    FOREIGN KEY (idJogador1) REFERENCES jogador (idJogador),
    FOREIGN KEY (idJogador2) REFERENCES jogador (idJogador)
);

/* Inserção de dados - Jogador */

INSERT INTO jogador (idJogador,
                     nomeJogador,
                     nacionalidade,
                     nomeUsuario,
                     senha,
                     posicaoRanking,
                     vitorias,
                     derrotas,
                     empates,
                     pontos,
                     tempoTotalJogo,
                     totalJogos)
VALUES (1000, "Simona Urbutis", "Lituania", "simonurb", "senha123", 3, 0, 0, 0, 0, 0, 0);

INSERT INTO jogador (idJogador,
                     nomeJogador,
                     nacionalidade,
                     nomeUsuario,
                     senha,
                     posicaoRanking,
                     vitorias,
                     derrotas,
                     empates,
                     pontos,
                     tempoTotalJogo,
                     totalJogos)
VALUES (1001, "Masha Tarkovsky", "Ucrania", "mashatarkov", "senha123", 5, 0, 0, 0, 0, 0, 0);

INSERT INTO jogador (idJogador,
                     nomeJogador,
                     nacionalidade,
                     nomeUsuario,
                     senha,
                     posicaoRanking,
                     vitorias,
                     derrotas,
                     empates,
                     pontos,
                     tempoTotalJogo,
                     totalJogos)
VALUES (1002, "Ella Heidi", "Alemanha", "heidii222", "senha123", 9, 0, 0, 0, 0, 0, 0);

INSERT INTO jogador (idJogador,
                     nomeJogador,
                     nacionalidade,
                     nomeUsuario,
                     senha,
                     posicaoRanking,
                     vitorias,
                     derrotas,
                     empates,
                     pontos,
                     tempoTotalJogo,
                     totalJogos)
VALUES (1003, "Bihn Tihn", "Vietname", "tihntihn", "senha123", 1, 0, 0, 0, 0, 0, 0);

/* Inserção de dados - Jogos */

INSERT INTO jogo (nome,
                  senha,
                  modoJogo,
                  idJogador1,
                  idJogador2,
                  pontuacao1,
                  pontuacao2,
                  dataJogo,
                  tempoJogo)
VALUES ("starman", "123", 1, 1000, 1001, 15, 25, '2023-06-12', 10);

INSERT INTO jogo (nome,
                  senha,
                  modoJogo,
                  idJogador1,
                  idJogador2,
                  pontuacao1,
                  pontuacao2,
                  dataJogo,
                  tempoJogo)
VALUES ("hotelcalifornia", "456", 1, 1000, 1001, 10, 15, '2023-06-13', 20);

INSERT INTO jogo (nome,
                  senha,
                  modoJogo,
                  idJogador1,
                  idJogador2,
                  pontuacao1,
                  pontuacao2,
                  dataJogo,
                  tempoJogo)
VALUES ("psychokiller", "789", 1, 1002, 1003, 20, 20, '2023-06-14', 30);

INSERT INTO jogo (nome,
                  senha,
                  modoJogo,
                  idJogador1,
                  idJogador2,
                  pontuacao1,
                  pontuacao2,
                  dataJogo,
                  tempoJogo)
VALUES ("runaway", "987", 1, 1002, 1003, 30, 20, '2023-06-15', 40);

INSERT INTO jogo (nome,
                  senha,
                  modoJogo,
                  idJogador1,
                  idJogador2,
                  pontuacao1,
                  pontuacao2,
                  dataJogo,
                  tempoJogo)
VALUES ("cardigan", "395", 1, 1000, 1002, 20, 30, '2023-06-21', 30);

INSERT INTO jogo (nome,
                  senha,
                  modoJogo,
                  idJogador1,
                  idJogador2,
                  pontuacao1,
                  pontuacao2,
                  dataJogo,
                  tempoJogo)
VALUES ("karma", "432", 1, 1000, 1003, 20, 10, '2023-06-21', 20);

INSERT INTO jogo (nome,
                  senha,
                  modoJogo,
                  idJogador1,
                  idJogador2,
                  pontuacao1,
                  pontuacao2,
                  dataJogo,
                  tempoJogo)
VALUES ("mirrorball", "965", 2, 1001, 1002, 30, 30, '2023-06-21', 10);

INSERT INTO jogo (nome,
                  senha,
                  modoJogo,
                  idJogador1,
                  idJogador2,
                  pontuacao1,
                  pontuacao2,
                  dataJogo,
                  tempoJogo)
VALUES ("style", "826", 2, 1001, 1003, 40, 30, '2023-06-21', 20);

INSERT INTO jogo (nome,
                  senha,
                  modoJogo,
                  idJogador1,
                  idJogador2,
                  pontuacao1,
                  pontuacao2,
                  dataJogo,
                  tempoJogo)
VALUES ("enchanted", "231", 1, 1002, 1003, 10, 30, '2023-06-21', 30);

INSERT INTO jogo (nome,
                  senha,
                  modoJogo,
                  idJogador1,
                  idJogador2,
                  pontuacao1,
                  pontuacao2,
                  dataJogo,
                  tempoJogo)
VALUES ("afterglow", "515", 1, 1001, 1000, 20, 20, '2023-06-21', 40);

INSERT INTO jogo (nome,
                  senha,
                  modoJogo,
                  idJogador1,
                  idJogador2,
                  pontuacao1,
                  pontuacao2,
                  dataJogo,
                  tempoJogo)
VALUES ("karma", "441", 2, 1003, 1000, 40, 20, '2023-06-21', 30);

INSERT INTO jogo (nome,
                  senha,
                  modoJogo,
                  idJogador1,
                  idJogador2,
                  pontuacao1,
                  pontuacao2,
                  dataJogo,
                  tempoJogo)
VALUES ("seven", "697", 1, 1001, 1002, 20, 10, '2023-06-21', 20);


UPDATE jogador 
SET totalJogos = (SELECT COUNT(idJogo) FROM jogo WHERE idJogador1 = 1000 OR idJogador2 = 1000) 
WHERE idJogador = 1000;
UPDATE jogador
SET totalJogos = (SELECT COUNT(idJogo) FROM jogo WHERE idJogador1 = 1001 OR idJogador2 = 1001)
WHERE idJogador = 1001;
UPDATE jogador
SET totalJogos = (SELECT COUNT(idJogo) FROM jogo WHERE idJogador1 = 1002 OR idJogador2 = 1002)
WHERE idJogador = 1002;
UPDATE jogador 
SET totalJogos = (SELECT COUNT(idJogo) FROM jogo WHERE idJogador1 = 1003 OR idJogador2 = 1003)
WHERE idJogador = 1003;

UPDATE jogador 
SET tempoTotalJogo = (SELECT SUM(tempoJogo) FROM jogo WHERE idJogador1 = 1000 OR idJogador2 = 1000) 
WHERE idJogador = 1000;
UPDATE jogador 
SET tempoTotalJogo = (SELECT SUM(tempoJogo) FROM jogo WHERE idJogador1 = 1001 OR idJogador2 = 1001) 
WHERE idJogador = 1001;
UPDATE jogador 
SET tempoTotalJogo = (SELECT SUM(tempoJogo) FROM jogo WHERE idJogador1 = 1002 OR idJogador2 = 1002) 
WHERE idJogador = 1002;
UPDATE jogador 
SET tempoTotalJogo = (SELECT SUM(tempoJogo) FROM jogo WHERE idJogador1 = 1003 OR idJogador2 = 1003) 
WHERE idJogador = 1003;

UPDATE jogador SET vitorias = vitorias + 
(SELECT COUNT(*) FROM jogo WHERE jogador.idJogador = jogo.idJogador1
AND jogo.pontuacao1 > jogo.pontuacao2) WHERE idJogador = 1000;
UPDATE jogador SET vitorias = vitorias + 
(SELECT COUNT(*) FROM jogo WHERE jogador.idJogador = jogo.idJogador2
AND jogo.pontuacao1 < jogo.pontuacao2) WHERE idJogador = 1000;
UPDATE jogador SET vitorias = vitorias + 
(SELECT COUNT(*) FROM jogo WHERE jogador.idJogador = jogo.idJogador1
AND jogo.pontuacao1 > jogo.pontuacao2) WHERE idJogador = 1001;
UPDATE jogador SET vitorias = vitorias + 
(SELECT COUNT(*) FROM jogo WHERE jogador.idJogador = jogo.idJogador2
AND jogo.pontuacao1 < jogo.pontuacao2) WHERE idJogador = 1001;
UPDATE jogador SET vitorias = vitorias + 
(SELECT COUNT(*) FROM jogo WHERE jogador.idJogador = jogo.idJogador1
AND jogo.pontuacao1 > jogo.pontuacao2) WHERE idJogador = 1002;
UPDATE jogador SET vitorias = vitorias + 
(SELECT COUNT(*) FROM jogo WHERE jogador.idJogador = jogo.idJogador2
AND jogo.pontuacao1 < jogo.pontuacao2) WHERE idJogador = 1002;
UPDATE jogador SET vitorias = vitorias + 
(SELECT COUNT(*) FROM jogo WHERE jogador.idJogador = jogo.idJogador1
AND jogo.pontuacao1 > jogo.pontuacao2) WHERE idJogador = 1003;
UPDATE jogador SET vitorias = vitorias + 
(SELECT COUNT(*) FROM jogo WHERE jogador.idJogador = jogo.idJogador2
AND jogo.pontuacao1 < jogo.pontuacao2) WHERE idJogador = 1003;

UPDATE jogador SET derrotas = derrotas + 
(SELECT COUNT(*) FROM jogo WHERE jogador.idJogador = jogo.idJogador1
AND jogo.pontuacao1 < jogo.pontuacao2) WHERE idJogador = 1000;
UPDATE jogador SET derrotas = derrotas + 
(SELECT COUNT(*) FROM jogo WHERE jogador.idJogador = jogo.idJogador2
AND jogo.pontuacao1 > jogo.pontuacao2) WHERE idJogador = 1000;
UPDATE jogador SET derrotas = derrotas + 
(SELECT COUNT(*) FROM jogo WHERE jogador.idJogador = jogo.idJogador1
AND jogo.pontuacao1 < jogo.pontuacao2) WHERE idJogador = 1001;
UPDATE jogador SET derrotas = derrotas + 
(SELECT COUNT(*) FROM jogo WHERE jogador.idJogador = jogo.idJogador2
AND jogo.pontuacao1 > jogo.pontuacao2) WHERE idJogador = 1001;
UPDATE jogador SET derrotas = derrotas + 
(SELECT COUNT(*) FROM jogo WHERE jogador.idJogador = jogo.idJogador1
AND jogo.pontuacao1 < jogo.pontuacao2) WHERE idJogador = 1002;
UPDATE jogador SET derrotas = derrotas + 
(SELECT COUNT(*) FROM jogo WHERE jogador.idJogador = jogo.idJogador2
AND jogo.pontuacao1 > jogo.pontuacao2) WHERE idJogador = 1002;
UPDATE jogador SET derrotas = derrotas + 
(SELECT COUNT(*) FROM jogo WHERE jogador.idJogador = jogo.idJogador1
AND jogo.pontuacao1 < jogo.pontuacao2) WHERE idJogador = 1003;
UPDATE jogador SET derrotas = derrotas + 
(SELECT COUNT(*) FROM jogo WHERE jogador.idJogador = jogo.idJogador2
AND jogo.pontuacao1 > jogo.pontuacao2) WHERE idJogador = 1003;

UPDATE jogador SET empates = empates + 
(SELECT COUNT(*) FROM jogo WHERE jogador.idJogador = jogo.idJogador1
AND jogo.pontuacao1 = jogo.pontuacao2) WHERE idJogador = 1000;
UPDATE jogador SET empates = empates + 
(SELECT COUNT(*) FROM jogo WHERE jogador.idJogador = jogo.idJogador2
AND jogo.pontuacao1 = jogo.pontuacao2) WHERE idJogador = 1000;
UPDATE jogador SET empates = empates + 
(SELECT COUNT(*) FROM jogo WHERE jogador.idJogador = jogo.idJogador1
AND jogo.pontuacao1 = jogo.pontuacao2) WHERE idJogador = 1001;
UPDATE jogador SET empates = empates + 
(SELECT COUNT(*) FROM jogo WHERE jogador.idJogador = jogo.idJogador2
AND jogo.pontuacao1 = jogo.pontuacao2) WHERE idJogador = 1001;
UPDATE jogador SET empates = empates + 
(SELECT COUNT(*) FROM jogo WHERE jogador.idJogador = jogo.idJogador1
AND jogo.pontuacao1 = jogo.pontuacao2) WHERE idJogador = 1002;
UPDATE jogador SET empates = empates + 
(SELECT COUNT(*) FROM jogo WHERE jogador.idJogador = jogo.idJogador2
AND jogo.pontuacao1 = jogo.pontuacao2) WHERE idJogador = 1002;
UPDATE jogador SET empates = empates + 
(SELECT COUNT(*) FROM jogo WHERE jogador.idJogador = jogo.idJogador1
AND jogo.pontuacao1 = jogo.pontuacao2) WHERE idJogador = 1003;
UPDATE jogador SET empates = empates + 
(SELECT COUNT(*) FROM jogo WHERE jogador.idJogador = jogo.idJogador2
AND jogo.pontuacao1 = jogo.pontuacao2) WHERE idJogador = 1003;

UPDATE jogador SET pontos = pontos +
(SELECT SUM(pontuacao1) FROM jogo WHERE jogo.idJogador1 = 1000) 
WHERE idJogador = 1000;
UPDATE jogador SET pontos = pontos +
(SELECT SUM(pontuacao2) FROM jogo WHERE jogo.idJogador2 = 1001) 
WHERE idJogador = 1001;
UPDATE jogador SET pontos = pontos +
(SELECT SUM(pontuacao1) FROM jogo WHERE jogo.idJogador1 = 1002) 
WHERE idJogador = 1002;
UPDATE jogador SET pontos = pontos +
(SELECT SUM(pontuacao2) FROM jogo WHERE jogo.idJogador2 = 1003) 
WHERE idJogador = 1003;

/* Respondendo aos questionamentos da atividade */

SELECT * FROM jogo;
SELECT * FROM jogador;

/* 1. Quais os dados pessoais de um dado jogador? */

SELECT *
FROM jogador
WHERE nomeJogador = "Ella Heidi";

/* 2. Em que data um dado jogador jogou pela última vez? */

SELECT MAX(dataJogo) AS ultimaDataJogo
FROM jogo
WHERE idJogador1 = (SELECT idJogador FROM jogador WHERE nomeJogador = "Simona Urbutis")
   OR idJogador2 = (SELECT idJogador FROM jogador WHERE nomeJogador = "Simona Urbutis");

/* 3. Quantos jogos realizaram todos os jogadores? */

SELECT COUNT(idJogo) AS totalJogos
FROM jogo;

/* 4. Quais os nomes dos jogadores associados a uma dada sala? */

SELECT jogador.nomeJogador
FROM jogador
INNER JOIN jogo ON jogador.idJogador = jogo.idJogador1 OR jogador.idJogador = jogo.idJogador2
WHERE jogo.nome = 'psychokiller';

/* EXTRA. Quantos jogos jogou cada jogador? - count where na tabela de jogo */

/*
Inclui todos os jogadores (jogador 1 e 2), (mesmo os que não jogaram, "left join") e conta
todas as suas ocorrencias de jogo, agrupando pelo nome do jogador
 */

SELECT jogador.nomeJogador, COUNT(*) AS totalJogos
FROM jogador
LEFT JOIN jogo ON jogador.idJogador = jogo.idJogador1 OR jogador.idJogador = jogo.idJogador2
GROUP BY jogador.nomeJogador;

/* 5. Qual o desempenho médio dos jogadores por cada país? */

/* Faz a média de vitorias, derrotas e empates agrupando por nacionalidade */

SELECT nacionalidade,
       AVG(vitorias) AS media_vitorias,
       AVG(derrotas) AS media_derrotas,
       AVG(empates)  AS media_empates
FROM jogador
GROUP BY nacionalidade ORDER BY media_vitorias DESC;

/* 6. Quais os três países com melhor desempenho? */

SELECT nacionalidade, SUM(pontos) AS total_pontos
FROM jogador
GROUP BY nacionalidade
ORDER BY total_pontos DESC
LIMIT 3;

/* 7. Qual a percentagem de empates considerando todos os jogos? */

SELECT (COUNT(*) * 100) / (SELECT COUNT(*) FROM jogo) AS percentagem_empates
FROM jogo
WHERE pontuacao1 = pontuacao2;

/* 8. Qual o total de tempo despendido por um dado jogador no jogo? */

SELECT SUM(tempoJogo) AS total_tempo_despendido
FROM jogo
WHERE idJogador1 = 1000
   OR idJogador2 = 1000;
   
SELECT nomeJogador, tempoTotalJogo
FROM jogador
WHERE idJogador = 1000;

/* 9. Qual a percentagem de vitórias considerando todos os jogos? */

SELECT (SUM(vitorias) * 100) / SUM(totalJogos) AS percentagem_vitorias
FROM jogador;

/* 10. Quantas vezes um dado jogador jogou no modo online? */

SELECT COUNT(*) AS total_jogos_online
FROM jogo
WHERE (idJogador1 = 1000 OR idJogador2 = 1000)
  AND modoJogo = 1;

/* EXTRA. Qual a percentagem de vitórias para cada jogador? */
SELECT nomeJogador, (vitorias * 100) / totalJogos AS percentual_vitorias
FROM jogador
ORDER BY percentual_vitorias DESC;

/* EXTRA. Ranking de jogadores */
SELECT nomeJogador, pontos
FROM jogador
ORDER BY pontos DESC;
