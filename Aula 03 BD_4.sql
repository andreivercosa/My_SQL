

SELECT * FROM actor;

SELECT CONCAT( first_name, ' ',last_name)Nome_e_Sobrenome,
LENGTH(CONCAT(first_name, last_name)) qtdCaracteres 
from actor 
WHERE LENGTH(CONCAT(first_name, last_name)) BETWEEN 11 AND 15;
