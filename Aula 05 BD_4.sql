
desc staff;


SELECT * FROM staff;

		SELECT CONCAT(st.first_name,' ', st.last_name), f.title, 
			CASE
				WHEN s.store_id = 1 THEN 'Loja D'	 
				WHEN s.store_id = 2 THEN 'Loja L'	
		END AS nomeDaLoja, 
		COUNT(*) qtd
	FROM inventory AS i
INNER JOIN film AS f ON i.film_id=f.film_id
INNER JOIN store AS s ON i.store_id=s.store_id
INNER JOIN staff AS st ON s.manager_staff_id = st.staff_id
GROUP BY f.title, st.first_name, st.Last_name, nomeDaLoja;