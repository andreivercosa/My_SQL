
SELECT CONCAT('Andrei','Vercosa');

SELECT SUM(valor) Soma, c.nome,'TEST'Col_falsa
FROM produto p INNER JOIN categoria c ON p.idCategoria = c.id
GROUP BY c.id