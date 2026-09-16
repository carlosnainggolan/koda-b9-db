SELECT concat(directors.first_name, ' ', directors.last_name) AS "Director Name", COUNT(movies.genre_id) AS "Total Genre"
FROM movies
JOIN directors ON movies.director_id = directors.id
JOIN genres ON movies.genre_id = genres.id
GROUP BY directors.first_name, directors.last_name;

SELECT concat(actors.first_name, ' ', actors.last_name) AS "Actor Name", COUNT(movies_actors.role) AS "Total Role"
FROM movies_actors
JOIN actors ON actors.id = movies_actors.actor_id
GROUP BY actors.first_name, actors.last_name
HAVING COUNT(movies_actors.role) > 5;

SELECT concat(directors.first_name, ' ', directors.last_name) AS "Director Name", COUNT(movies.title) AS "Total Movie"
FROM movies
JOIN directors ON directors.id = movies.director_id
GROUP BY directors.first_name, directors.last_name
ORDER BY COUNT(movies.title) DESC
LIMIT 1;

SELECT extract(YEAR FROM release_date) AS "Year", count(EXTRACT (year from release_date)) AS "Total" 
FROM movies
GROUP BY EXTRACT(YEAR FROM release_date)
ORDER BY "Total" DESC
LIMIT 1;

SELECT movies.title AS "Movies Title", string_agg(concat(actors.first_name, ' ', actors.last_name), ', ') AS "Actors"
FROM movies_actors
JOIN actors ON actors.id = movies_actors.actor_id
JOIN movies ON movies.id = movies_actors.movie_id
GROUP BY "Movies Title";





