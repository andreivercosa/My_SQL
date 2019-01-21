SELECT e.nome Eestadostado,c.nome Cidade
	FROM cidade c
	INNER JOIN estado e ON c.idEstado = e.id;
    
    -- UPDATE cidade SET nome = 'test' WHERE id = 1;
   -- DELETE FROM cidade WHERE id = 1;