

CREATE VIEW vw_actor AS
SELECT CONCAT(a.first_name, ' ',a.last_name) actorName,
f.title movie 
FROM  film_actor fm
INNER JOIN film f ON fm.film_id = f.film_id
INNER JOIN actor a ON fm.actor_id=a.actor_id;

DESC actor;

