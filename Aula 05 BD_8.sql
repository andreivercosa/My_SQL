

SELECT * FROM consulta; 

UPDATE paciente
SET dtCadastro = CURRENT_TIMESTAMP;


INSERT INTO exame(nome, idMedico, idPaciente, idTipoexame)
VALUE ('Ex sangue','1','1','1'),
('Exame sangue','2','2','1'),
('Ex fezes','3','3','2'),
('Ex urina', '4','4','3'),
('US com contraste', '5','5','4');

INSERT INTO exame(idConsulta)
VALUE ('1'),
('2'),
('3'),
('4'),
('5');


INSERT INTO Tipoexame(nome)
VALUE ('SANGUE'),
('FZ'),
('URINA'),
('US'),
('RX');

INSERT INTO consulta(idMedico,idpaciente)
VALUE ('1','1'),
('2','2'),
('3','3'),
('4','4'),
('5','5');

INSERT INTO paciente(nome, telefone)
VALUES('Maria Raimunda', '(92)98637-2345'),
('Joaqui Bento', '(92)99123-5483'),
('Quelubia Maria', '(92)3644-2127'),
('Ingrid Silva', '(92)98254-3256'),
('Sofia Auzier', '(92)99234-3498');

INSERT INTO Especialidades(especialidades)
VALUES('Clinico Geral'),
('Alergista'),
('Imunologista'),
('Ortopedista'),
('Gastroenterologista');


INSERT INTO medico(nome, crm, idEspecialidade)
VALUES('Raimundo Jose', '12343', '1'),
('Antonio Marcos', '32443', '2'),
('Pedro Luiz', '83023', '3'),
('Lucas Macos', '15438', '4'),
('Tadeu Vercosa', '34569', '5');