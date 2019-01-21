
/*SELECT fulana.nome FROM pai fulana;
SELECT p.nome pai,f.nome filho
	FROM filho f
	INNER JOIN pai p ON f.idPai = p.id;*/
    
	INSERT INTO filho(idPai, nome,dtCadastro) VALUES(8,'Paola',CURDATE());
    SELECT * FROM filho;
    