


CREATE TABLE categoria
(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(50),
dtCadastro DATETIME DEFAULT CURRENT_TIMESTAMP()
);

SELECT * FROM categoria;

INSERT INTO categoria(nome) VALUES('Limpeza');