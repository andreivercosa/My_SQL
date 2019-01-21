

CREATE TABLE cidade
(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    idEstado INT ,
    nome VARCHAR(50),
    dtCadastro DATE,
    FOREIGN KEY(idEstado) REFERENCES estado(id)
)