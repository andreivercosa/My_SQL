
CREATE TABLE produto
(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
idCategoria INT,
nome VARCHAR (50),
valor DOUBLE,
dtCadastro DATETIME DEFAULT CURRENT_TIMESTAMP(),
FOREIGN KEY (idCategoria) REFERENCES categoria(id)
);

SELECT *FROM produto;


SELECT *FROM categoria;

INSERT INTO categoria(nome) VALUES('Limpeza');

INSERT INTO produto(idCategoria, nome, valor) VALUES(4,'Sabao', 4.23);
