CREATE DATABASE TEST;


CREATE TABLE estado(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    estado VARCHAR(50),
    dtCadastro DATETIME DEFAULT CURRENT_TIMESTAMP()
);

CREATE TABLE cidade(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    cidade VARCHAR(50),
    id_estado INT,
    FOREIGN KEY(id_estado) REFERENCES estado(id),
    dtCadastro DATETIME DEFAULT CURRENT_TIMESTAMP()
);

CREATE TABLE usuario(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50),
    id_cidade INT,
    FOREIGN KEY(id_cidade) REFERENCES cidade(id),
    dtCadastro DATETIME DEFAULT CURRENT_TIMESTAMP()
);


INSERT INTO estado(estado)
VALUES ('AMAZONAS'),
('MARANHAO');

INSERT INTO cidade(cidade, id_estado)
VALUES ('MANAUS',1),
('CAXIAS',2);

INSERT INTO usuario(nome, id_cidade)
VALUES ('MARIA',1),
('RAIMUNDA',2);



SELECT u.nome, c.cidade, e.estado
	FROM usuario AS u
	INNER JOIN cidade AS c ON u.id_cidade = c.id
    INNER JOIN estado AS e ON c.id_estado = e.id;

