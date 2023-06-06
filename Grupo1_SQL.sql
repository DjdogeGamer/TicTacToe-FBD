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
