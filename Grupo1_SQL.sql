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

CREATE TABLE jogo (
	idJogo INT NOT NULL UNIQUE,
	nome VARCHAR(255),
    senha VARCHAR(255),
    modoJogo INT NOT NULL,
    idJogador1 INT NOT NULL UNIQUE,
    idJogador2 INT NOT NULL UNIQUE,
    pontuacao1 INT,
    pontuacao2 INT,
	dataJogo DATE,
    PRIMARY KEY (idJogo),
    FOREIGN KEY (idJogador1) REFERENCES jogador(idJogador),
    FOREIGN KEY (idJogador2) REFERENCES jogador(idJogador)
);

ALTER TABLE jogo ADD tempoJogo TIME;

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

/* 1. Quais os dados pessoais de um dado jogador? */
SELECT nomeJogador FROM jogador WHERE nomeJogador = "Kinga Nowak";

/* 3. Quantos jogos realizaram todos os jogadores? */
SELECT SUM(totalJogos) FROM jogador;

/* 6. Quais os três países com melhor desempenho? */
SELECT nacionalidade, MAX(vitorias) FROM jogador GROUP BY nacionalidade ORDER BY MAX(vitorias) DESC LIMIT 3;

/* 7. Qual a percentagem de empates considerando todos os jogos? */
SELECT (SUM(empates) * 100)/SUM(totalJogos) FROM jogador;

/* 9. Qual a percentagem de vitórias para todos os jogadores? */
SELECT nomeJogador, (vitorias * 100)/totalJogos FROM jogador ORDER BY (vitorias * 100)/totalJogos DESC;

/* Ranking de jogadores */
SELECT * FROM jogador ORDER BY posicaoRanking;
