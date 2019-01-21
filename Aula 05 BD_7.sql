
CREATE DATABASE empresa;


CREATE TABLE tpDeps
(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    tpDep VARCHAR (50)
);

CREATE TABLE dependente
(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome_dependente VARCHAR (50),
    id_tpDep INT,
    FOREIGN KEY (id_tpDep) REFERENCES tpDeps(id)
);

CREATE TABLE cargos
(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    cargo VARCHAR (50)
);

CREATE TABLE departamento
(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    Dep VARCHAR (50)
);


CREATE TABLE tpConvenio
(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    tpConvenio VARCHAR (50)
);

CREATE TABLE ltDependente
(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_funcionario INT,
    FOREIGN KEY (id_funcionario) REFERENCES funcionarios(id),
    id_dependente INT,
    FOREIGN KEY (id_dependente) REFERENCES dependente(id)
);

CREATE TABLE convenio
(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_tpConvenio INT,
    FOREIGN KEY (id_tpConvenio) REFERENCES tpConvenio(id),
    id_ltDependente INT,
    FOREIGN KEY (id_ltDependente) REFERENCES ltDependente(id)
);

CREATE TABLE funcionarios
(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR (50),
    id_cargo INT,
    FOREIGN KEY (id_cargo) REFERENCES cargos(id),
    id_dep INT,
    FOREIGN KEY (id_dep) REFERENCES departamento(id) 
    
);

INSERT INTO departamento (Dep)
VALUES ('SBS'),
('TRANSPORTE'),
('TIC'),
('ARM'),
('BGPO'),
('COMPARTILHADO'),
('CIP'),
('RECEPCAO'),
('PN'),
('SG');

INSERT INTO cargos (cargo)
VALUES ('Analista de RH'),
('Assistente Adm'),
('Auxiliar Adm');

INSERT INTO funcionarios (nome, id_cargo,id_dep)
VALUES ('Antonio',1,1),
('Ana',2,2),
('Lia',3,3);


INSERT INTO tpDeps (tpDep)
VALUES ('Conjuge'),
('Filhos'),
('Pais');

INSERT INTO dependente (nome_dependente, id_tpDep)
VALUES ('Maria',1),
('Luiza',2),
('Paulo',2),
('Raimunda',3);

INSERT INTO ltDependente (id_funcionario, id_dependente)
VALUES (1,1),
(2,2),
(2,3),
(3,4);

SELECT * FROM departamento;

DELETE FROM ltDependente
WHERE id IN (5,6,7,8);

INSERT INTO tpConvenio (tpConvenio)
VALUES ('Maria',1),
('Luiza',2),
('Paulo',2),
('Raimunda',3);

SELECT *FROM departamento
	WHERE id >=2 AND id <=5;
    
SELECT DATE (CURRENT_TIMESTAMP());

SELECT * FROM departamento
	WHERE DATE(dtCadastro) BETWEEN '2019-01-13' AND '2019-01-18';

SELECT DATE (dtCadastro),
			COUNT(*)qtd
	FROM departamento
    GROUP BY dtCadastro;
    
    
SELECT LPAD('STRING',20 , 'TEST');
SELECT RPAD('STRING',20 , 'TEST');

SELECT RAND();

SELECT(FLOOR(1+RAND()*60)) ALEATORIO;

SELECT LPAD(1,4,0);


SELECT LPAD((FLOOR(1+RAND()*60)),5,0) ALEATORIO;


