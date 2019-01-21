

DESC category;

DESC film_category;

DESC film;

CREATE VIEW vw_category AS
			SELECT  f.title,f.description,f.rental_duration, c.name
               FROM film_category AS fc
     INNER JOIN film AS f ON fc.film_id=f.film_id
	 INNER JOIN category AS c ON fc.category_id=c.category_id;
     
     
	DESC film_actor;
	DESC actor;
	DESC film;
    
    CREATE VIEW vw_film_actor AS
			SELECT CONCAT(a.first_name,' ', a.last_name) AS NAME_ACTOR,
            f.title AS TITLE,
            f.description AS DESCRIPTION
				FROM film_actor AS fac
		INNER JOIN actor AS a ON fac.actor_id=a.actor_id
        INNER JOIN film AS f ON fac.film_id=f.film_id;
        
        
	DESC staff;
	DESC store;
	DESC address;
    
    CREATE VIEW vw_staff AS
			SELECT a.address, s.active
				FROM staff AS s
		INNER JOIN store AS st ON s.store_id=st.store_id
        INNER JOIN address AS a ON s.address_id=a.address_id;
        
        CALL sp_film_actor('DAV');