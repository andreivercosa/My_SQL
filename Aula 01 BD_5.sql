

CREATE TABLE filho
(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    idPai INT ,
    nome VARCHAR(50),
    dtCadastro DATE,
    FOREIGN KEY(idPai) REFERENCES pai(id)
)