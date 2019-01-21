
SELECT * FROM quarto;

CREATE TABLE estado
(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50)
);

CREATE TABLE cidade
(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
    idEstado INT,
	FOREIGN KEY(idEstado) REFERENCES estado(id)
)
;
CREATE TABLE cliente
(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
    idCidade INT,
    FOREIGN KEY(idCidade) REFERENCES cidade(id),
    dtCadastro DATETIME DEFAULT CURRENT_TIMESTAMP()
)
;
CREATE TABLE quarto
(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50)
)
;
CREATE TABLE hospedagem
(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    idCliente INT,
    idQuarto INT,
    FOREIGN KEY(idCliente) REFERENCES cliente(id),
    FOREIGN KEY(idQuarto) REFERENCES quarto(id),
    dtHospedagem DATETIME DEFAULT CURRENT_TIMESTAMP()
)
;
CREATE TABLE tiposervicos
(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50)
)
;
CREATE TABLE servicos
(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    idHosped INT,
    idTipoServico INT,
    FOREIGN KEY(idHosped) REFERENCES hospedagem(id),
    FOREIGN KEY(idTipoServico) REFERENCES tiposervicos(id),
    dtRegistro DATETIME DEFAULT CURRENT_TIMESTAMP()
);

INSERT INTO estado(nome)
VALUE ('Amazonas'),
('Sao Paulo'),
('Rio de Janeiro'),
('Maranhao'),
('Minas Gerais');

INSERT INTO cidade(nome, idEstado)
VALUE ('Manaus','1'),
('Sao Paulo','2'),
('Rio de Janeiro','3'),
('Sao Luis','4'),
('Belo horizonte','5');

INSERT INTO cliente (nome, idCidade)
VALUE ('Mateus Silva','1'),
('Marcos Auzier','2'),
('Lucas Vercosa','3'),
('Luis Ozorio','4'),
('Darcy Mendonca','5');

INSERT INTO quarto(nome)
VALUE ('1A'),
('1B'),
('1D'),
('1E'),
('1F');

SELECT * FROM hospedagem;
INSERT INTO hospedagem(idCliente,idQuarto)
VALUE ('1','1'),
('2','2'),
('3','3'),
('4','4'),
('5','5');

SELECT * FROM tiposervicos;
INSERT INTO tiposervicos(nome)
VALUE ('Limpresa'),
('Troca de lencois'),
('Abastecer frigobar'),
('Troca de toalhas'),
('Comida');

SELECT * FROM servicos;
INSERT INTO servicos(idHosped, idTipoServico)
VALUE ('1','1'),
('2','2'),
('3','3'),
('4','4'),
('5','5');

CREATE VIEW vw_hospedagem AS
SELECT c.nome Cliente, q.nome Quarto
FROM  hospedagem h
INNER JOIN cliente c ON h.idCliente = c.id
INNER JOIN quarto q ON h.idQuarto=q.id;

SELECT e.nome Estado,c.nome Cidade
FROM cidade c
INNER JOIN estado e ON c.idEstado = e.id;

SELECT * FROM vw_hospedagem;






