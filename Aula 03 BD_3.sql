

SELECT nome,
	LENGTH(nome) qtdCaracteres
    FROM cliente
    WHERE LENGTH (nome) <20; -- PROCURAR POR QUANTIDADE
    
    SELECT * FROM cliente
    WHERE nome LIKE '%andrei%'; -- busca
    
    DROP TABLE PAI; -- DELETAR TABELA