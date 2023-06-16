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

/* inserção de dados - jogadores */

INSERT INTO jogador(idJogador, nomeJogador, nacionalidade, nomeUsuario, senha, posicaoRanking,
                    vitorias, derrotas, empates, tempoTotalJogo, totalJogos)
VALUES (1000, "Calos Eduardo", "Brasil",
        "carlinhos2023", "adoro_jogar", 10, 100, 20, 30, 5, 150);

INSERT INTO jogador(idJogador, nomeJogador, nacionalidade, nomeUsuario, senha, posicaoRanking,
                    vitorias, derrotas, empates, tempoTotalJogo, totalJogos)
VALUES (1467, "Joana Couto", "Portugal",
        "joaninha", "jo4n4123", 8, 150, 30, 30, 7, 210);

INSERT INTO jogador(idJogador, nomeJogador, nacionalidade, nomeUsuario, senha, posicaoRanking,
                    vitorias, derrotas, empates, tempoTotalJogo, totalJogos)
VALUES (3521, "Gonçalo Gomes", "Portugal",
        "ggomes", "01021997", 25, 40, 3, 7, 1.6, 50);

INSERT INTO jogador(idJogador, nomeJogador, nacionalidade, nomeUsuario, senha, posicaoRanking,
                    vitorias, derrotas, empates, tempoTotalJogo, totalJogos)
VALUES (0034, "Kinga Nowak", "Polônia",
        "queen_123", "polonia123", 12, 100, 50, 10, 5.3, 160);

INSERT INTO jogador(idJogador, nomeJogador, nacionalidade, nomeUsuario, senha, posicaoRanking,
                    vitorias, derrotas, empates, tempoTotalJogo, totalJogos)
VALUES (0894, "Maria das Flores", "Brasil",
        "florida", "melzinha", 1, 250, 20, 30, 10, 300);

INSERT INTO jogador(idJogador, nomeJogador, nacionalidade, nomeUsuario, senha, posicaoRanking,
                    vitorias, derrotas, empates, tempoTotalJogo, totalJogos)
VALUES (2043, "Sam Rock", "Canadá",
        "letsrock", "rock1234", 5, 200, 150, 50, 13.3, 400);

UPDATE jogador
SET nacionalidade = 'Moçambique'
WHERE idJogador = 1467;

UPDATE jogador
SET totalJogos = (SELECT COUNT(idJogo) FROM jogo WHERE idJogador1 = 1000 OR idJogador2 = 1000)
WHERE idJogador = 1000;
UPDATE jogador
SET totalJogos = (SELECT COUNT(idJogo) FROM jogo WHERE idJogador1 = 0034 OR idJogador2 = 0034)
WHERE idJogador = 0034;
UPDATE jogador
SET totalJogos = (SELECT COUNT(idJogo) FROM jogo WHERE idJogador1 = 0894 OR idJogador2 = 0894)
WHERE idJogador = 0894;
UPDATE jogador
SET totalJogos = (SELECT COUNT(idJogo) FROM jogo WHERE idJogador1 = 1467 OR idJogador2 = 1467)
WHERE idJogador = 1467;
UPDATE jogador
SET totalJogos = (SELECT COUNT(idJogo) FROM jogo WHERE idJogador1 = 2043 OR idJogador2 = 2043)
WHERE idJogador = 2043;
UPDATE jogador
SET totalJogos = (SELECT COUNT(idJogo) FROM jogo WHERE idJogador1 = 3521 OR idJogador2 = 3521)
WHERE idJogador = 3521;


/* testes */

SELECT *
FROM jogador;

SELECT *
FROM jogo;

/* Limpar tabelas */

DELETE FROM jogo;
DELETE FROM jogador;

/* inserção de dados - jogos */

INSERT INTO jogo(nome, senha, modoJogo, idJogador1, idJogador2, pontuacao1,
                 pontuacao2, dataJogo)
VALUES ("Jogo Legal", "", 3, 2043, 0894, 20, 50, STR_TO_DATE('2023-06-06', '%Y-%m-%d'));

INSERT INTO jogo(nome, senha, modoJogo, idJogador1, idJogador2, pontuacao1,
                 pontuacao2, dataJogo)
VALUES ("Maçã", "12345", 2, 2043, 3521, 2, 0, STR_TO_DATE('2023-06-06', '%Y-%m-%d'));

INSERT INTO jogo(nome, senha, modoJogo, idJogador1, idJogador2, pontuacao1,
                 pontuacao2, dataJogo)
VALUES ("Blueberry", "blue", 3, 1467, 3521, 0, 2, STR_TO_DATE('2023-06-06', '%Y-%m-%d'));

INSERT INTO jogo(nome, senha, modoJogo, idJogador1, idJogador2, pontuacao1,
                 pontuacao2, dataJogo)
VALUES ("", "", 1, 1467, 3521, 1, 1, STR_TO_DATE('2023-06-06', '%Y-%m-%d'));

INSERT INTO jogo(nome, senha, modoJogo, idJogador1, idJogador2, pontuacao1,
                 pontuacao2, dataJogo)
VALUES ("", "", 3, 0894, 0034, 2, 0, STR_TO_DATE('2023-06-06', '%Y-%m-%d'));

INSERT INTO jogo(nome, senha, modoJogo, idJogador1, idJogador2, pontuacao1,
                 pontuacao2, dataJogo)
VALUES ("informática", "", 2, 2043, 0034, 0, 2, STR_TO_DATE('2023-06-06', '%Y-%m-%d'));

INSERT INTO jogo(nome, senha, modoJogo, idJogador1, idJogador2, pontuacao1,
                 pontuacao2, dataJogo)
VALUES ("cloud", "23042002", 1, 1467, 1000, 0, 2, STR_TO_DATE('2023-06-06', '%Y-%m-%d'));

INSERT INTO jogo(nome, senha, modoJogo, idJogador1, idJogador2, pontuacao1,
                 pontuacao2, dataJogo)
VALUES ("cloud", "23042002", 1, 2043, 1000, 1, 1, STR_TO_DATE('2023-06-06', '%Y-%m-%d'));

INSERT INTO jogo(nome, senha, modoJogo, idJogador1, idJogador2, pontuacao1,
                 pontuacao2, dataJogo)
VALUES ("", "", 3, 0894, 0034, 0, 2, STR_TO_DATE('2023-06-06', '%Y-%m-%d'));

INSERT INTO jogo(nome, senha, modoJogo, idJogador1, idJogador2, pontuacao1,
                 pontuacao2, dataJogo)
VALUES ("chocolate", "happy", 3, 1467, 0894, 1, 1, STR_TO_DATE('2023-06-06', '%Y-%m-%d'));

INSERT INTO jogo(nome, senha, modoJogo, idJogador1, idJogador2, pontuacao1,
                 pontuacao2, dataJogo)
VALUES ("dados", "euamocomputacao", 1, 0034, 2043, 0, 2, STR_TO_DATE('2023-06-06', '%Y-%m-%d'));


/* Test Queries (Gustavo). */

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
VALUES (1000, "Simona Urbutis", "Lituania", "simonurb", "senha123", 3, 9, 5, 2, 50, 21, 16);

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
VALUES (1001, "Masha Tarkovsky", "Ucrania", "mashatarkov", "senha123", 5, 11, 4, 3, 50, 19, 9);

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
VALUES (1002, "Ella Heidi", "Alemanha", "heidii222", "senha123", 9, 11, 7, 7, 10, 11, 2);

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
VALUES (1003, "Bihn Tihn", "Vietname", "tihntihn", "senha123", 1, 15, 5, 1, 65, 55, 29);

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

/* Respondendo aos questionamentos da atividade */

/* 1. Quais os dados pessoais de um dado jogador? */
SELECT *
FROM jogador
WHERE nomeJogador = "Ella Heidi";

/* 2. Em que data um dado jogador jogou pela última vez? */

SELECT MAX(dataJogo) AS ultimaDataJogo
FROM jogo
WHERE idJogador1 = (SELECT idJogador FROM jogador WHERE nomeJogador = "Simona Urbutis")
   OR idJogador2 = (SELECT idJogador FROM jogador WHERE nomeJogador = "Masha Tarkovsky");

/* 3. Quantos jogos realizaram todos os jogadores? */

SELECT COUNT(idJogo) AS totalJogos
FROM jogo;

/* 4. Quais os nomes dos jogadores associados a uma dada sala? */

/*
Procura o nome do jogador (1 ou 2) que esta associado (inner join) a um jogo com o nome da sala
*/

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

/* faz a média de vitorias, derrotas e empates agrupando por nacionalidade */

SELECT nacionalidade,
       AVG(vitorias) AS media_vitorias,
       AVG(derrotas) AS media_derrotas,
       AVG(empates)  AS media_empates
FROM jogador
GROUP BY nacionalidade;

/* 6. Quais os três países com melhor desempenho? - tem que ser feito com pontos */

SELECT nacionalidade, SUM(pontos) AS total_pontos
FROM jogador
GROUP BY nacionalidade
ORDER BY total_pontos DESC
LIMIT 3;

/* 7. Qual a percentagem de empates considerando todos os jogos? - alterar para a tabela de jogos */

SELECT (COUNT(*) * 100) / (SELECT COUNT(*) FROM jogo) AS percentagem_empates
FROM jogo
WHERE pontuacao1 = pontuacao2;

/* empate */

/* Qual o total de tempo despendido por um dado jogador no jogo? */

/* Substituir <id_jogador> pelo id do jogador que quer procurar */

SELECT SUM(tempoJogo) AS total_tempo_despendido
FROM jogo
WHERE idJogador1 = 1000
   OR idJogador2 = 1001;

/* 9. Qual a percentagem de vitórias considerando todos os jogos? - alterar para a tabela de jogos */

SELECT (SUM(vitorias) * 100) / SUM(totalJogos) AS percentagem_vitorias
FROM jogador;

/* 10. Quantas vezes um dado jogador jogou no modo online? */

/* substituir <id_jogador> pelo id do jogador que quer procurar */
/* PS: ver indice de modoJogo */

SELECT COUNT(*) AS total_jogos_online
FROM jogo
WHERE (idJogador1 = 1000 OR idJogador2 = 1001)
  AND modoJogo = 1;

/* EXTRA. Qual a percentagem de vitórias para cada jogador? */
SELECT nomeJogador, (vitorias * 100) / totalJogos AS percentual_vitorias
FROM jogador
ORDER BY percentual_vitorias DESC;

/* Ranking de jogadores */
SELECT *
FROM jogador
ORDER BY posicaoRanking;