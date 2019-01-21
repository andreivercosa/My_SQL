
CREATE DATABASE venda;
USE venda;

CREATE TABLE produtos
(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(50),
    estoque INT
);

CREATE TABLE itensVenda
(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    idProduto INT,
    quantidade INT
)
;
INSERT INTO produtos(descricao, estoque)
VALUES('Arroz',30),
('Bolacha',10),
('farinha', 30);

SELECT * FROM produtos;
SELECT * FROM intensVenda;

INSERT INTO itensVenda(idProduto, quantidade) VALUES (1, 20)
