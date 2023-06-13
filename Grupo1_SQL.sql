/* criação das tabelas */

CREATE TABLE jogador (
	idJogador INT NOT NULL UNIQUE,
	nomeJogador VARCHAR(255),
    nacionalidade VARCHAR(255),
    nomeUsuario VARCHAR(255),
    senha VARCHAR(255) NOT NULL,
    posicaoRanking INT,
    vitorias INT,
    derrotas INT,
    empates INT,
    tempoTotalJogo FLOAT,
    totalJogos INT,
    PRIMARY KEY (idJogador)
);

ALTER TABLE jogador ADD pontos INT;

CREATE TABLE jogo (
	idJogo INT NOT NULL UNIQUE AUTO_INCREMENT,
	nome VARCHAR(255),
    senha VARCHAR(255),
    modoJogo INT NOT NULL,
    idJogador1 INT NOT NULL,
    idJogador2 INT NOT NULL,
    pontuacao1 INT,
    pontuacao2 INT,
	dataJogo DATE,
    PRIMARY KEY (idJogo),
    FOREIGN KEY (idJogador1) REFERENCES jogador(idJogador),
    FOREIGN KEY (idJogador2) REFERENCES jogador(idJogador)
);

ALTER TABLE jogo ADD tempoJogo TIME;

/* inserção de dados - jogadores */

INSERT INTO jogador(idJogador, nomeJogador, nacionalidade, nomeUsuario, senha, posicaoRanking, 
vitorias, derrotas, empates, tempoTotalJogo, totalJogos) VALUES (1000, "Calos Eduardo", "Brasil",
"carlinhos2023", "adoro_jogar", 10, 100, 20, 30, 5, 150);

INSERT INTO jogador(idJogador, nomeJogador, nacionalidade, nomeUsuario, senha, posicaoRanking, 
vitorias, derrotas, empates, tempoTotalJogo, totalJogos) VALUES (1467, "Joana Couto", "Portugal",
"joaninha", "jo4n4123", 8, 150, 30, 30, 7, 210);

INSERT INTO jogador(idJogador, nomeJogador, nacionalidade, nomeUsuario, senha, posicaoRanking, 
vitorias, derrotas, empates, tempoTotalJogo, totalJogos) VALUES (3521, "Gonçalo Gomes", "Portugal",
"ggomes", "01021997", 25, 40, 3, 7, 1.6, 50);

INSERT INTO jogador(idJogador, nomeJogador, nacionalidade, nomeUsuario, senha, posicaoRanking, 
vitorias, derrotas, empates, tempoTotalJogo, totalJogos) VALUES (0034, "Kinga Nowak", "Polônia",
"queen_123", "polonia123", 12, 100, 50, 10, 5.3, 160);

INSERT INTO jogador(idJogador, nomeJogador, nacionalidade, nomeUsuario, senha, posicaoRanking, 
vitorias, derrotas, empates, tempoTotalJogo, totalJogos) VALUES (0894, "Maria das Flores", "Brasil",
"florida", "melzinha", 1, 250, 20, 30, 10, 300);

INSERT INTO jogador(idJogador, nomeJogador, nacionalidade, nomeUsuario, senha, posicaoRanking, 
vitorias, derrotas, empates, tempoTotalJogo, totalJogos) VALUES (2043, "Sam Rock", "Canadá",
"letsrock", "rock1234", 5, 200, 150, 50, 13.3, 400);

UPDATE jogador SET nacionalidade = 'Moçambique' WHERE idJogador = 1467;

/* inserção de dados - jogos */

INSERT INTO jogo(nome, senha, modoJogo, idJogador1, idJogador2, pontuacao1, 
pontuacao2, dataJogo) VALUES ("Jogo Legal", "", 3, 2043, 0894, 20, 50, STR_TO_DATE('2023-06-06', '%Y-%m-%d'));

INSERT INTO jogo(nome, senha, modoJogo, idJogador1, idJogador2, pontuacao1, 
pontuacao2, dataJogo) VALUES ("Maçã", "12345", 2, 2043, 3521, 2, 0, STR_TO_DATE('2023-06-06', '%Y-%m-%d'));

INSERT INTO jogo(nome, senha, modoJogo, idJogador1, idJogador2, pontuacao1, 
pontuacao2, dataJogo) VALUES ("Blueberry", "blue", 3, 1467, 3521, 0, 2, STR_TO_DATE('2023-06-06', '%Y-%m-%d'));

INSERT INTO jogo(nome, senha, modoJogo, idJogador1, idJogador2, pontuacao1, 
pontuacao2, dataJogo) VALUES ("", "", 1, 1467, 3521, 1, 1, STR_TO_DATE('2023-06-06', '%Y-%m-%d'));

INSERT INTO jogo(nome, senha, modoJogo, idJogador1, idJogador2, pontuacao1, 
pontuacao2, dataJogo) VALUES ("", "", 3, 0894, 0034, 2, 0, STR_TO_DATE('2023-06-06', '%Y-%m-%d'));

INSERT INTO jogo(nome, senha, modoJogo, idJogador1, idJogador2, pontuacao1, 
pontuacao2, dataJogo) VALUES ("informática", "", 2, 2043, 0034, 0, 2, STR_TO_DATE('2023-06-06', '%Y-%m-%d'));

INSERT INTO jogo(nome, senha, modoJogo, idJogador1, idJogador2, pontuacao1, 
pontuacao2, dataJogo) VALUES ("cloud", "23042002", 1, 1467, 1000, 0, 2, STR_TO_DATE('2023-06-06', '%Y-%m-%d'));

INSERT INTO jogo(nome, senha, modoJogo, idJogador1, idJogador2, pontuacao1, 
pontuacao2, dataJogo) VALUES ("cloud", "23042002", 1, 2043, 1000, 1, 1, STR_TO_DATE('2023-06-06', '%Y-%m-%d'));

INSERT INTO jogo(nome, senha, modoJogo, idJogador1, idJogador2, pontuacao1, 
pontuacao2, dataJogo) VALUES ("", "", 3, 0894, 0034, 0, 2, STR_TO_DATE('2023-06-06', '%Y-%m-%d'));

INSERT INTO jogo(nome, senha, modoJogo, idJogador1, idJogador2, pontuacao1, 
pontuacao2, dataJogo) VALUES ("chocolate", "happy", 3, 1467, 0894, 1, 1, STR_TO_DATE('2023-06-06', '%Y-%m-%d'));

INSERT INTO jogo(nome, senha, modoJogo, idJogador1, idJogador2, pontuacao1, 
pontuacao2, dataJogo) VALUES ("dados", "euamocomputacao", 1, 0034, 2043, 0, 2, STR_TO_DATE('2023-06-06', '%Y-%m-%d'));

/* respondendo aos questionamentos da atividade */

/* 1. Quais os dados pessoais de um dado jogador? */
SELECT * FROM jogador WHERE nomeJogador = "Kinga Nowak";

/* 3. Quantos jogos realizaram todos os jogadores? */
SELECT COUNT(idJogo) FROM jogo;

/* EXTRA. Quantos jogos jogou cada jogador? - count where na tabela de jogo */


/* 6. Quais os três países com melhor desempenho? - tem que ser feito com pontos */
SELECT nacionalidade, SUM(vitorias) FROM jogador GROUP BY nacionalidade ORDER BY SUM(vitorias) DESC LIMIT 3;

/* 7. Qual a percentagem de empates considerando todos os jogos? - alterar para a tabela de jogos */
SELECT (SUM(empates) * 100)/SUM(totalJogos) FROM jogador;

/* 9. Qual a percentagem de vitórias considerando todos os jogos? - alterar para a tabela de jogos */
SELECT (SUM(empates) * 100)/SUM(totalJogos) FROM jogador;

/* EXTRA. Qual a percentagem de vitórias para cada jogador? */
SELECT nomeJogador, (vitorias * 100)/totalJogos FROM jogador ORDER BY (vitorias * 100)/totalJogos DESC;

/* Ranking de jogadores */
SELECT * FROM jogador ORDER BY posicaoRanking;
