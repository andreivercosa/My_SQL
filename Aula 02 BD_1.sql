
SELECT COUNT(*) qtdDia, dtCadastro
FROM fucapi.pai GROUP BY dtCadastro
HAVING qtdDia>2;