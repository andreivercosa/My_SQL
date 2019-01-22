
	CREATE DATABASE 	sistema_clinica;

	CREATE TABLE especialidade(
		id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
		especialidade VARCHAR(50),
		dtCadastro DATETIME DEFAULT CURRENT_TIMESTAMP()
	);

	CREATE TABLE medico(
		id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
		medico VARCHAR(50),
		id_especialidade INT,
		FOREIGN KEY (id_especialidade) REFERENCES especialidade(id),
		dtCadastro DATETIME DEFAULT CURRENT_TIMESTAMP()
	);

	CREATE TABLE estado(
		id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
		estado VARCHAR(50),
		dtCadastro DATETIME DEFAULT CURRENT_TIMESTAMP()
	);

	CREATE TABLE cidade(
		id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
		cidade VARCHAR(50),
		id_estado int,
		FOREIGN KEY (id_estado) REFERENCES estado(id),
		dtCadastro DATETIME DEFAULT CURRENT_TIMESTAMP()
	);

	CREATE TABLE paciente(
		id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
		paciente VARCHAR(50),
		telefone VARCHAR(50),
		id_cidade int,
		FOREIGN KEY (id_cidade) REFERENCES cidade(id),
		dtCadastro DATETIME DEFAULT CURRENT_TIMESTAMP()
	);

	CREATE TABLE tipo_exame(
		id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
		tipo_exame VARCHAR(50),
		dtCadastro DATETIME DEFAULT CURRENT_TIMESTAMP()
	);

	CREATE TABLE exames(
		id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
		exame VARCHAR(50),
		id_tipo_exame INT,
		FOREIGN KEY (id_tipo_exame) REFERENCES tipo_exame(id),
		dtCadastro DATETIME DEFAULT CURRENT_TIMESTAMP()
	);

	CREATE TABLE consulta(
		id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
		id_medico INT,
		FOREIGN KEY (id_medico) REFERENCES medico(id),
		id_paciente INT,
		FOREIGN KEY (id_paciente) REFERENCES paciente(id),
		id_exames INT,
		FOREIGN KEY (id_exames) REFERENCES exames(id),
		dtCadastro DATETIME DEFAULT CURRENT_TIMESTAMP()
	);

	INSERT INTO estado(estado)
	VALUES('AMAZONAS'),
	('MARANHAO'),
	('PARA'),
	('RIO DE JANEIRO'),
	('SAO PAULO');

	SELECT * FROM cidade;

	INSERT INTO cidade (cidade, id_estado)
	VALUES('MANAUS',1),
	('SAO LUIS',2),
	('BELEM',3),
	('RIO DE JANEIRO',4),
	('SAO PAULO',5);


	ALTER TABLE sistema_clinica.paciente
	ADD COLUMN sobrenome VARCHAR(50);

	DESC paciente;


	INSERT INTO paciente(paciente,sobrenome, telefone,id_cidade)
	VALUES('ANDREI', 'VERCOSA','(92) 98123-4312',1),
	('SOFIA', 'AUZIER','(99) 98248-1934',2),
	('INGRID', 'SILVA','(91) 98123-9803',3),
	('DARCY', 'MENDONCA','(21) 98123-9293',4),
	('ANTONIO', 'OZORIO','(11) 98123-2743',5);

	SELECT * FROM paciente;

	INSERT INTO especialidade(especialidade)
	VALUES('CLINICO GERAL'),
	('PEDIATRA'),
	('GINECOLOGISTA'),
	('GERIATRA'),
	('UROLOGISTA');

	INSERT INTO medico (medico,id_especialidade)
	VALUES('MATEUS',1),
	('GERMANO',2),
	('YASMINNE',3),
	('JOSE DIAS',4),
	('PAULO',5);

	INSERT INTO tipo_exame(tipo_exame)
	VALUES('HEMOGRAMA'),
	('TESTE DO PEZINHO'),
	('US'),
	('DESCITOMETRIA'),
	('RX');

	INSERT INTO exames(exame,id_tipo_exame)
	VALUES('SANGUE',1),
	('TP',2),
	('ABDOMEM TOTAL',3),
	('DENSIDADE OSSEA',4),
	('RAIO -X COLUNA',5);

	INSERT INTO consulta(id_medico,id_paciente,id_exames)
	VALUES(1,1,1),
	(2,2,2),
	(3,3,3),
	(4,4,4),
	(5,5,5);

	ALTER TABLE sistema_clinica.consulta
	DROP FOREIGN KEY consulta_ibfk_3;
	ALTER TABLE sistema_clinica.consulta 
	DROP COLUMN id_exames,
	DROP INDEX id_exames;

	ALTER TABLE sistema_clinica.exames
	ADD COLUMN id_consulta INT,
	ADD INDEX fk_consulta_idx (id ASC, id_consulta ASC) VISIBLE;

	ALTER TABLE sistema_clinica.exames 
	ADD CONSTRAINT fk_consulta
	  FOREIGN KEY (id_consulta) REFERENCES sistema_clinica.consulta (id);




